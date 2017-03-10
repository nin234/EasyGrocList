//
//  AppDelegate.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 2/28/13.
//  Copyright (c) 2013 Ninan Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EasyAddViewController.h"
#import "TemplListViewController.h"
#import "ListViewController.h"
#import "List1ViewController.h"
#import "EasyDataOps.h"
#import "sharing/InAppPurchase.h"
#import "EasyKchainItemWrapper.h"
#import "sharing/NtwIntf.h"
#import "EasyGrocShareMgr.h"
#import "EasyViewController.h"
#import "SharingDelegate.h"
#import "sharing/HomeViewController.h"
#import "sharing/AppShrUtil.h"

enum eActionSheet
{
    eActnShetMainScreen,
    eActnShetInAppPurchse
};

@interface AppDelegate : UIResponder <UIApplicationDelegate, UIActionSheetDelegate, UIAlertViewDelegate,  InAppPurchaseDelegate>
{
    EasyAddViewController *aVw;
     bool bKvInit;
    enum eActionSheet eAction;
    bool bShrMgrStarted;
    bool bSystemAbrt;
    
}

@property (nonatomic, retain) UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navViewController;


@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic, retain) InAppPurchase *inapp;
@property dispatch_queue_t fetchQueue;
@property (nonatomic, retain) NSString *pSearchStr;
@property (nonatomic, retain) NSString *pSearchStr1;
@property (nonatomic, retain) EasyDataOps *dataSync;
@property (nonatomic, retain) NSString *mlistName;
@property (nonatomic, retain) NSString *listName;
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
@property (nonatomic, retain) EasyViewController *aViewController1;

@property (nonatomic, retain) AppShrUtil *appUtl;


- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
- (void)itemAdd;
- (void)itemAddDone;
- (void)itemEdit;
- (void)itemEditDone;
- (void)itemEditCancel;
- (void) itemAddCancel;
- (void) itemAddOptionsCancel;
- (void)templItemAddDone;
- (void) templItemAddCancel;
- (void) templItemEdit;
- (void) popView;
-(void) templItemDisplay:(NSString *)name lstcntr:(ListViewController *) pLst;
- (void) templItemEditDone;
-(void) itemDisplay:(NSString *)name;
-(void) itemDisplay:(NSString *)name lstcntr:(List1ViewController *)pLst;
-(void) templItemEditCancel;
-(void) showPicList:(NSString *)name pictName:(NSString *)picName imagePicker:(UIImagePickerController *) imagePick;
-(void) setPurchsd:(NSString *)trid;

@end
