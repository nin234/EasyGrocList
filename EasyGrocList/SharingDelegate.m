//
//  ContactsViewController.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 11/11/15.
//  Copyright © 2015 Ninan Thomas. All rights reserved.
//

#import "SharingDelegate.h"
#import <sharing/FriendDetails.h>
#import "AppDelegate.h"
#import <common/List.h>
#import <common/MasterList.h>
#include "sys/time.h"

//const NSInteger SELECTION_INDICATOR_TAG = 53322;

@interface SharingDelegate ()

@end

@implementation SharingDelegate



- (instancetype)init
{
    self = [super init];
    return self;
}

-(void) refreshTemplShareMainLst
{
     AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [pDlg.templViewCntrl refreshMasterList];
    [pDlg.templViewCntrl.tableView reloadData];
}

-(void) refreshShareMainLst
{
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [pDlg.aViewController1.pAllItms refreshList];
    
}

-(void) shareNow:(NSString *) shareStr
{
    
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    ItemKey *listName = [pDlg.aViewController1.pAllItms getSelectedItem];
    NSDictionary *picDic = [pDlg.dataSync getPics];
    NSString *picName = [picDic objectForKey:listName];
    if (picName != nil)
    {
        NSError *err;
        NSURL *albumurl = pDlg.pPicsDir;
        NSURL *imgUrl;
        
        if (albumurl != nil && [albumurl checkResourceIsReachableAndReturnError:&err])
        {
            imgUrl = [albumurl URLByAppendingPathComponent:picName isDirectory:NO];
        }
        
        if ([imgUrl checkResourceIsReachableAndReturnError:&err] == YES)
        {
            if (listName == nil)
                return;
            shareStr = [shareStr stringByAppendingString:listName.name];
            [pDlg.pShrMgr sharePicture:imgUrl metaStr:shareStr shrId:listName.share_id];
        }
        return;
    }
    NSArray *items = [pDlg.dataSync getList:listName];
    NSUInteger nItems = [items count];
     shareStr = [shareStr stringByAppendingString:@":::"];
    
    for (NSUInteger i=0; i < nItems; ++i)
    {
        List *item = [items objectAtIndex:i];
        shareStr = [shareStr stringByAppendingString:[[NSNumber numberWithLongLong:item.rowno] stringValue]];
        shareStr = [shareStr stringByAppendingString:@":"];
        shareStr = [shareStr stringByAppendingString:item.item];
        shareStr = [shareStr stringByAppendingString:@"]:;"];
    }
    NSLog(@"Sharing item=%@ name=%@", shareStr, listName);
    [pDlg.pShrMgr shareItem:shareStr listName:listName.name shrId:listName.share_id];
    
    
    return;
}

-(void) setShareId : (long long) shareId
{
     AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [pDlg setShareId:shareId];
    
}
-(void) shareTemplList:(NSString *) shareStr
{
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    ItemKey *listName = [pDlg.templViewCntrl getSelectedItem];
    NSArray *items = [pDlg.dataSync getMasterList:listName];
    

    shareStr = [shareStr stringByAppendingString:@":::"];
    
   shareStr =  [self itemsArrayToShareStr:shareStr itemsArray:items];
     NSLog(@"ShareString now %@", shareStr);
    shareStr = [shareStr stringByAppendingString:@":;]:;"];
    ItemKey *itk = [[ItemKey alloc] init];
    itk.name = [listName.name stringByAppendingString:@":INV"];
    itk.share_id = listName.share_id;
    items = [pDlg.dataSync getMasterList:itk];
     shareStr =  [self itemsArrayToShareStr:shareStr itemsArray:items];
    shareStr = [shareStr stringByAppendingString:@":;]:;"];
    itk.name = [listName.name stringByAppendingString:@":SCRTCH"];
    items = [pDlg.dataSync getMasterList:itk];
    shareStr =  [self itemsArrayToShareStr:shareStr itemsArray:items];
    NSLog(@"Sharing templItem %@ %@ %lld %s %d", shareStr, listName.name, listName.share_id, __FILE__, __LINE__);
    [pDlg.pShrMgr shareTemplItem:shareStr listName:listName.name shrId:listName.share_id];

}

-(NSString *) itemsArrayToShareStr:(NSString *) shareStr itemsArray:(NSArray *) items
{
    NSUInteger nItems = [items count];
    for (NSUInteger i=0; i < nItems; ++i)
    {
        MasterList *item = [items objectAtIndex:i];
        shareStr = [shareStr stringByAppendingString:[[NSNumber numberWithLongLong:item.rowno] stringValue]];
        shareStr = [shareStr stringByAppendingString:@":"];
        shareStr = [shareStr stringByAppendingString:[[NSNumber numberWithInt:item.startMonth] stringValue]];
        shareStr = [shareStr stringByAppendingString:@":"];
        shareStr = [shareStr stringByAppendingString:[[NSNumber numberWithInt:item.endMonth] stringValue]];
        shareStr = [shareStr stringByAppendingString:@":"];
        shareStr = [shareStr stringByAppendingString:[[NSNumber numberWithInt:item.inventory] stringValue]];
        shareStr = [shareStr stringByAppendingString:@":"];
        shareStr = [shareStr stringByAppendingString:item.item];
        shareStr = [shareStr stringByAppendingString:@"]:;"];
    }
    return shareStr;
    
}

-(NSURL *) getPicUrl:(long long ) shareId picName:(NSString *) name itemName:(NSString *) iName
{
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    
    NSString *pFlName = [[NSNumber numberWithLongLong:shareId] stringValue];
    pFlName = [pFlName stringByAppendingString:@"_"];
    pFlName = [pFlName stringByAppendingString:name];
    pFlName = [pFlName stringByAppendingString:@".jpg"];
    
    
    NSURL *pFlUrl;
    NSError *err;
    NSURL *albumurl = pDlg.pPicsDir;
    if (albumurl != nil && [albumurl checkResourceIsReachableAndReturnError:&err])
    {
        
        pFlUrl = [albumurl URLByAppendingPathComponent:pFlName isDirectory:NO];
    }
    else
    {
        return nil;
    }
    
    ItemKey *itk = [[ItemKey alloc] init];
    itk.name = iName;
    itk.share_id = shareId;
    [pDlg.dataSync addPicItem:itk picItem:pFlName];
    return pFlUrl;
}

-(void) updateEasyMainLstVwCntrl
{
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [pDlg.dataSync updateEasyMainLstVwCntrl];
}

-(void) storeThumbNailImage:(NSURL *)picUrl
{
    UIImage  *fullScreenImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:picUrl] scale:1.0];
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    CGSize oImgSize;
    oImgSize.height = 71;
    oImgSize.width = 71;
    UIGraphicsBeginImageContext(oImgSize);
    [fullScreenImage drawInRect:CGRectMake(0, 0, oImgSize.width, oImgSize.height)];
    UIImage *thumbnail = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    //  CGImageRef thumbnailImageRef = MyCreateThumbnailImageFromData (data, 5);
    // UIImage *thumbnail = [UIImage imageWithCGImage:thumbnailImageRef];
    CGSize pImgSiz = [thumbnail size];
    NSLog(@"Added thumbnail Image height = %f width=%f \n", pImgSiz.height, pImgSiz.width);
    
    NSData *thumbnaildata = UIImageJPEGRepresentation(thumbnail, 0.3);
    
   NSURL  *albumurl = pDlg.pThumbNailsDir;
    NSError *err;
    NSString *pFlName = [picUrl lastPathComponent];
    NSURL *pFlUrl;
    if (albumurl != nil && [albumurl checkResourceIsReachableAndReturnError:&err])
    {
        
        pFlUrl = [albumurl URLByAppendingPathComponent:pFlName isDirectory:NO];
    }
    
    if ([thumbnaildata writeToURL:pFlUrl atomically:YES] == NO)
    {
        NSLog (@"Failed to write to thumbnail file  %@\n",  pFlUrl);
        return;
        // --nAlNo;
        
    }
    else
    {
        NSLog(@"Save thumbnail file %@\n", pFlUrl);
    }
    

    return;
}

@end
