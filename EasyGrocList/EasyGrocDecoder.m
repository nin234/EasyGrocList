//
//  MessageDecoder.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 9/27/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import "EasyGrocDecoder.h"
#import "AppDelegate.h"

@implementation EasyGrocDecoder

-(instancetype) init
{
    self = [super init];
    return self;
}


-(bool) decodeMessage:(char*)buffer msglen:(ssize_t)mlen
{
    if ([super decodeMessage:buffer msglen:mlen])
    {
        return true;
    }
        
    bool bRet = true;
    int msgTyp;
    memcpy(&msgTyp, buffer+sizeof(int), sizeof(int));
    
    switch (msgTyp)
    {
       
            
        case GET_EASYGROC_LIST_MSG:
        {
            bRet = [self processShareItemMessage:buffer msglen:mlen];
        }
        break;
            
        default:
            break;
    }
    
    return bRet;
}

-(bool) processShareItemMessage:(char *)buffer msglen:(ssize_t)mlen
{
    NSString *name = [NSString stringWithCString:(buffer + 4*sizeof(int)) encoding:NSASCIIStringEncoding];
    int namelen;
    memcpy(buffer + 2*sizeof(int), &namelen, sizeof(int));
    NSString *list = [NSString stringWithCString:(buffer + 4*sizeof(int) + namelen) encoding:NSASCIIStringEncoding];
    NSArray *listItems = [list componentsSeparatedByString:@";"];
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
        [itemMp setObject:item forKey:rowno];
    }
    
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [pDlg.dataSync addItem:name itemsDic:itemMp];
    return true;
}


@end
