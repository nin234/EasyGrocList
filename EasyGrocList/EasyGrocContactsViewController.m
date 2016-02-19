//
//  ContactsViewController.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 11/11/15.
//  Copyright © 2015 Ninan Thomas. All rights reserved.
//

#import "EasyGrocContactsViewController.h"
#import <sharing/FriendDetails.h>
#import "AppDelegate.h"
#import "List.h"

//const NSInteger SELECTION_INDICATOR_TAG = 53322;

@interface EasyGrocContactsViewController ()

@end

@implementation EasyGrocContactsViewController

-(void) shareNow
{
    [super shareNow];
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSString *listName = [pDlg.aViewController1.pAllItms getSelectedItem];
    NSArray *items = [pDlg.dataSync getList:listName];
    
    NSUInteger nItems = [items count];
    NSString *shareStr = [[NSString alloc] init];
     NSUInteger cnt = [super.frndDic count];
    bool bFnd = false;
    for (NSUInteger i=0; i < cnt ; ++i)
    {
        NSNumber *numbr = [seletedItems objectAtIndex:i];
        if ([numbr boolValue] == YES)
        {
            FriendDetails *frnd = [rownoFrndDetail objectForKey:[NSNumber numberWithUnsignedInteger:i]];
            if (frnd != nil)
            {
                shareStr = [shareStr stringByAppendingString:frnd.name];
                shareStr = [shareStr stringByAppendingString:@";"];
                bFnd = true;
            }
        }
        
    }
    
    if (!bFnd)
        return;
    shareStr = [shareStr stringByAppendingString:@":::"];
    
    for (NSUInteger i=0; i < nItems; ++i)
    {
        List *item = [items objectAtIndex:i];
        shareStr = [shareStr stringByAppendingString:[[NSNumber numberWithLongLong:item.rowno] stringValue]];
        shareStr = [shareStr stringByAppendingString:@":"];
        shareStr = [shareStr stringByAppendingString:item.item];
        shareStr = [shareStr stringByAppendingString:@";"];
    }
    [pDlg.pShrMgr shareList:shareStr listName:shareStr];
    
    
    return;
}

@end
