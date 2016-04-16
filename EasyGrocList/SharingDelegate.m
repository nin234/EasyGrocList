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
#import "List.h"

//const NSInteger SELECTION_INDICATOR_TAG = 53322;

@interface SharingDelegate ()

@end

@implementation SharingDelegate

-(void) shareNow:(NSString *) shareStr
{
    
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *listName = [pDlg.aViewController1.pAllItms getSelectedItem];
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
            [pDlg.pShrMgr sharePicture:imgUrl metaStr:shareStr];
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
        shareStr = [shareStr stringByAppendingString:@";"];
    }
    [pDlg.pShrMgr shareItem:shareStr listName:shareStr];
    
    
    return;
}

@end
