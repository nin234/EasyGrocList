//
//  ContactsViewController.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 11/11/15.
//  Copyright © 2015 Ninan Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EasyKchainItemWrapper.h"
#import <sharing/ContactsViewController.h>
#import <sharing/ShareMgr.h>


@interface SharingDelegate : NSObject <ContactsViewControllerDelegate, ShareMgrDelegate>
{
 
}


-(void) shareNow:(NSString *) shareStr;
-(NSURL *) getPicUrl:(long long ) shareId picName:(NSString *) name itemName:(NSString *) iName;
-(void) storeThumbNailImage:(NSURL *)picUrl;

@property bool templList;

@end