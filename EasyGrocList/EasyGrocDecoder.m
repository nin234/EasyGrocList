//
//  MessageDecoder.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 9/27/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import "EasyGrocDecoder.h"
#import "AppDelegate.h"
#import "common/MasterList.h"
#import "common/ItemKey.h"
#import "common/LocalList.h"

@implementation EasyGrocDecoder

-(instancetype) init
{
    self = [super init];
    return self;
}


-(bool) decodeMessage:(char*)buffer msglen:(ssize_t)mlen
{
    [super decodeMessage:buffer msglen:mlen];
   
    bool bRet = true;
    int msgTyp;
    memcpy(&msgTyp, buffer+sizeof(int), sizeof(int));
    
    switch (msgTyp)
    {
       
            
        case SHARE_ITEM_MSG:
        {
            bRet = [self processShareItemMessage:buffer msglen:mlen];
        }
        break;
            
        case SHARE_TEMPL_ITEM_MSG:
        {
            bRet = [self processShareTemplItemMessage:buffer msglen:mlen];
        }
        break;

        default:
            break;
    }
    
    return bRet;
}

-(bool) processShareTemplItemMessage:(char *)buffer msglen:(ssize_t)mlen
{
    NSString *name = [NSString stringWithCString:(buffer + 4*sizeof(int)) encoding:NSASCIIStringEncoding];
    int namelen = 0;
    memcpy(buffer + 2*sizeof(int), &namelen, sizeof(int));
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSArray *pMasterListNames = [pDlg.dataSync getMasterListNames];
    NSUInteger cnt = [pMasterListNames count];
    bool bNewItem = true;
    for (NSUInteger i=0; i < cnt ; ++i)
    {
        if ([name isEqualToString:[pMasterListNames objectAtIndex:i]])
        {
            bNewItem = false;
            break;
        }
    }
    
    NSString *list = [NSString stringWithCString:(buffer + 4*sizeof(int) + namelen) encoding:NSASCIIStringEncoding];
    NSArray *listcomps = [list componentsSeparatedByString:@":;]:;"];
    NSUInteger comps = [listcomps count];
    NSString *shareIdStr = [[NSString alloc] init];
    for (NSUInteger j=0; j < comps; ++j)
    {
        if (!j)
        {
            NSArray *itemrowarr = [[listcomps objectAtIndex:j] componentsSeparatedByString:@":"];
            shareIdStr = [itemrowarr objectAtIndex:0];
            continue;
        }

        NSArray *listItems = [[listcomps objectAtIndex:j] componentsSeparatedByString:@"]:;"];
        NSMutableDictionary *itemMp;
        itemMp = [[NSMutableDictionary alloc] init];
        cnt = [listItems count];
        for (NSUInteger i=0; i < cnt; ++i)
        {
            NSString *itemrow = [listItems objectAtIndex:i];
            NSArray *itemrowarr = [itemrow componentsSeparatedByString:@":"];
           
            NSUInteger cnt1 = [itemrowarr count];
            if (cnt1 != 5)
            {
                NSLog(@"Invalid cnt1 %lu %lu", (unsigned long)cnt1, (unsigned long)i);
                continue;
            }
            MasterList *mitem = [[MasterList alloc] init];
            NSString *rownoStr = [itemrowarr objectAtIndex:0];
            long long rowno1 = [rownoStr longLongValue];
            NSNumber *rowno = [NSNumber numberWithLongLong:rowno1];
            mitem.rowno = rowno1;
            NSString *startMonthStr = [itemrowarr objectAtIndex:1];
            mitem.startMonth = [startMonthStr intValue];
            mitem.endMonth = [[itemrowarr objectAtIndex:2] intValue];
            mitem.inventory = [[itemrowarr objectAtIndex:3] intValue];
            mitem.item = [itemrowarr objectAtIndex:4];
        
            [itemMp setObject:mitem forKey:rowno];
        }
        NSString *adjstedname = name;
        if (j == 2)
            adjstedname= [name stringByAppendingString:@":INV"];
        else if (j==3)
            adjstedname = [name stringByAppendingString:@":SCRTCH"];
            
        adjstedname = [adjstedname stringByAppendingString:@"::];::"];
        adjstedname = [adjstedname stringByAppendingString:shareIdStr];
        if (bNewItem)
        {
            [pDlg.dataSync addShareTemplItem:adjstedname itemsDic:itemMp];
        }
        else
        {
            [pDlg.dataSync editedTemplItem:adjstedname itemsDic:itemMp];
        }
    }
    
    return true;
}

-(bool) processShareItemMessage:(char *)buffer msglen:(ssize_t)mlen
{
    int namelenoffset = 2*sizeof(int) + sizeof(long long);
    NSLog(@"namelenoffset %d  %s %d", namelenoffset, __FILE__, __LINE__);
    NSString *name = [NSString stringWithCString:(buffer + 4*sizeof(int) +sizeof(long long)) encoding:NSASCIIStringEncoding];
    
    int namelen = 0;
    memcpy(&namelen, buffer + namelenoffset, sizeof(int));
    long long share_id = 0;
    memcpy(&share_id, buffer+2*sizeof(int), sizeof(long long));
    
    ItemKey *itk  = [[ItemKey alloc] init];
    itk.name = name;
    itk.share_id = share_id;
    
    int listoffset = 4*sizeof(int) + namelen +sizeof(long long);
    NSString *list = [NSString stringWithCString:(buffer + listoffset) encoding:NSASCIIStringEncoding];
   
    NSArray *listItems = [list componentsSeparatedByString:@"]:;"];
    NSMutableDictionary *itemMp;
    itemMp = [[NSMutableDictionary alloc] init];
    NSUInteger cnt = [listItems count];
    
    for (NSUInteger i=0; i < cnt; ++i)
    {
        
        NSString *itemrow = [listItems objectAtIndex:i];
        NSArray *itemrowarr = [itemrow componentsSeparatedByString:@":"];
        NSUInteger cnt1 = [itemrowarr count];
        if (cnt1 != 2)
            continue;
        NSString *rownoStr = [itemrowarr objectAtIndex:0];
        NSString *item = [itemrowarr objectAtIndex:1];
        long long rowno1 = [rownoStr longLongValue];
        NSNumber *rowno = [NSNumber numberWithLongLong:rowno1];
        LocalList *litem = [[LocalList alloc] init];
        litem.name = name;
        litem.item = item;
        litem.share_id = share_id;
        litem.rowno = rowno1;
        [itemMp setObject:litem forKey:rowno];
    }
    
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSArray *pListNames = [pDlg.dataSync getListNames];
    cnt = [pListNames count];
    bool bNewItem = true;
     NSLog (@"Received from shareId=%lld name=%@ item=%@ bNewItem=%d", share_id , name, list, bNewItem);
    for (NSUInteger i=0; i < cnt ; ++i)
    {
        ItemKey *key = [pListNames objectAtIndex:i];
        if ([name isEqualToString:key.name] && share_id == key.share_id)
        {
            bNewItem = false;
            break;
        }
    }
    if (bNewItem)
    {
        [pDlg.dataSync addItem:itk itemsDic:itemMp];
    }
    else
    {
        [pDlg.dataSync editItem:itk itemsDic:itemMp];
    }
    return true;
}


@end
