//
//  AppDelegate.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 2/28/13.
//  Copyright (c) 2013 Ninan Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "common/EasyAddViewController.h"
#import "common/TemplListViewController.h"
#import "common/ListViewController.h"
#import "common/List1ViewController.h"
#import "common/DataOps.h"
#import "sharing/InAppPurchase.h"
#import "EasyKchainItemWrapper.h"
#import "sharing/NtwIntf.h"
#import "EasyGrocShareMgr.h"
#import "common/EasyViewController.h"
#import "SharingDelegate.h"
#import "sharing/HomeViewController.h"
#import "sharing/AppShrUtil.h"
#import "SharingDelegate.h"




@interface AppDelegate : UIResponder <UIApplicationDelegate, UIActionSheetDelegate, UIAlertViewDelegate, EasyViewControllerDelegate, TemplListViewControllerDelegate>
{
    EasyAddViewController *aVw;
     bool bKvInit;
    
    bool bSystemAbrt;
    bool bShrMgrStarted;
    UINavigationController *mainVwNavCntrl;
    UIView *easyShareVw;
    
}

@property (nonatomic, retain) UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navViewController;




@property dispatch_queue_t fetchQueue;

@property (nonatomic, retain) DataOps *dataSync;

@property (nonatomic, retain) NSFileManager *pFlMgr;
@property (nonatomic, retain) NSURL *pThumbNailsDir;
@property (nonatomic, retain) NSURL *pPicsDir;
@property (nonatomic, retain) NSURL *pDocsDir;

@property (nonatomic, retain) EasyGrocShareMgr *pShrMgr;

@property long long no_of_lists;
@property long long no_of_template_lists;
@property long long no_of_edits;
@property long long no_of_template_edits;
@property (nonatomic, retain) EasyKchainItemWrapper *kchain;

@property (nonatomic, retain) EasyViewController*  aViewController1;
@property (nonatomic, retain) AppShrUtil *appUtl;
@property (nonatomic, retain) SharingDelegate *pShrDelegate;
@property (nonatomic, retain) TemplListViewController *templViewCntrl;
-(void) shareMgrStartAndShow;
- (NSURL *)applicationDocumentsDirectory;

-(void) setShareId : (long long) shareId;


- (void) popView;


@end
