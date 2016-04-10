//
//  AppDelegate.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 2/28/13.
//  Copyright (c) 2013 Ninan Thomas. All rights reserved.
//

#import "AppDelegate.h"
#import "AddViewController.h"
#import "ListViewController.h"
#import "List1ViewController.h"
#import "TemplListViewController.h"
#import "PhotoDisplayViewController.h"
#import "SharingDelegate.h"
#import "sharing/HomeViewController.h"

@implementation AppDelegate

@synthesize pSearchStr;
@synthesize pSearchStr1;
@synthesize dataSync;
@synthesize mlistName;
@synthesize listName;
@synthesize pFlMgr;
@synthesize pThumbNailsDir;
@synthesize pPicsDir;
@synthesize pDocsDir;
@synthesize inapp;
@synthesize fetchQueue;

@synthesize navViewController;
@synthesize no_of_lists;
@synthesize no_of_template_lists;
@synthesize no_of_edits;
@synthesize no_of_template_edits;
@synthesize kchain;

@synthesize pShrMgr;
@synthesize aViewController1;

@synthesize appUtl;


@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

-(void) setPurchsd : (NSString *)trid
{
    NSLog(@"Setting purchased to true");
    [appUtl setPurchsdTokens:trid];
    appUtl.purchased = true;
    [kchain setObject:@"true" forKey:(__bridge id)kSecAttrAccount];
    [inapp stop];
    [dataSync setInAppCancelTimer:false];
    if (!bShrMgrStarted)
    {
        [pShrMgr start];
        bShrMgrStarted = true;
    }

}

-(void) popView
{
    //putchar('N');
    [self.navViewController popViewControllerAnimated:NO];
    NSArray *vw = [self.navViewController viewControllers];
    NSUInteger cnt = [vw count];
    NSLog(@"No of view controllers %lu \n", (unsigned long)cnt);
    return;
}

- (void)itemAdd
{
    MainViewController *pMainVwCntrl = [self.navViewController.viewControllers objectAtIndex:0];
    NSLog(@"AppDelegate:itemAdd no_of_list=%lld purchased=%d", no_of_lists, appUtl.purchased);
    if (!appUtl.purchased && no_of_lists >= 2)
    {
        NSLog(@"Cannot add a new item without upgrade COUNT=%lu", (unsigned long)[pMainVwCntrl.pAllItms.list count]);
        UIAlertView *pAvw = [[UIAlertView alloc] initWithTitle:@"Purchase/restore now" message:@"Only two lists allowed with free version. Please Purchase/restore now to add unlimited number of lists" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [pAvw show];
        return;
    }
    pSearchStr = nil;
    pMainVwCntrl.pSearchBar.text = nil;
    [pMainVwCntrl.pSearchBar resignFirstResponder];
    AddViewController *aViewController = [[AddViewController alloc]
                                          initWithNibName:nil bundle:nil];
    aVw = aViewController;
    [self.navViewController pushViewController:aViewController animated:YES];
    return;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"Clicked button at index %ld", (long)buttonIndex);
    
    if(bSystemAbrt)
    {
        bSystemAbrt = false;
        return;
    }
    eAction = eActnShetInAppPurchse;
    UIActionSheet *pSh;
    pSh = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Purchase", @"Restore Purchases", nil];
    
    MainViewController *pMainVwCntrl = [self.navViewController.viewControllers objectAtIndex:0];
    [pSh showInView:pMainVwCntrl.pAllItms.tableView];
    [pSh setDelegate:self];

    return;
}

- (void)templItemAddDone
{

    ListViewController *pListView = (ListViewController *)[self.navViewController popViewControllerAnimated:NO];
    
    [self templItemDisplay:pListView.name lstcntr:pListView];
    [pListView cleanUpItemMp];
    [self.dataSync addTemplItem:pListView.name itemsDic:pListView.itemMp];
    ++no_of_template_lists;
     [kchain setObject:[[NSNumber numberWithLongLong:no_of_template_lists] stringValue] forKey:(__bridge id)kSecAttrComment];
    if (appUtl.purchased)
        [self.pShrMgr storeTemplItemInCloud:pListView.name itemsDic:pListView.itemMp];
    return;
}

- (void)templItemEdit
{
    if (!appUtl.purchased && no_of_template_edits > 2)
    {
        NSLog(@"Cannot edit item further without upgrade edit count =%lu", (unsigned long)no_of_template_edits);
        UIAlertView *pAvw = [[UIAlertView alloc] initWithTitle:@"Purchase/restore now" message:@"Please purchase/restore now for unlimited number of edits" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [pAvw show];
        return;
    }

    
    [self popView];
    
    ListViewController *aViewController = [ListViewController alloc];
    aViewController.editMode = eViewModeEdit;
    aViewController = [aViewController initWithNibName:nil bundle:nil];
    [self.navViewController pushViewController:aViewController animated:YES];
    return;
}

-(void) templItemEditCancel
{
    AppDelegate *pDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [pDlg popView];
    return;
}

- (void) templItemEditDone
{
    
    ListViewController *pListView = (ListViewController *)[self.navViewController popViewControllerAnimated:NO];
    [pListView cleanUpItemMp];
    [self.dataSync editedTemplItem:pListView.name itemsDic:pListView.itemMp];
     [self templItemDisplay:pListView.name lstcntr:pListView];
    ++no_of_template_edits;
     [kchain setObject:[[NSNumber numberWithLongLong:no_of_template_edits] stringValue] forKey:(__bridge id)kSecAttrDescription];
    if (appUtl.purchased)
        [self.pShrMgr storeTemplItemInCloud:pListView.name itemsDic:pListView.itemMp];
    return;
}


-(void) templItemDisplay:(NSString *)name lstcntr:(ListViewController *) pLst
{
    mlistName = name;
    ListViewController *aViewController = [ListViewController alloc];
    aViewController.editMode = eViewModeDisplay;
    aViewController = [aViewController initWithNibName:nil bundle:nil];
    [self.navViewController pushViewController:aViewController animated:YES];
    [aViewController refreshMasterListCpyFromLstVwCntrl:pLst];
    [aViewController.tableView reloadData];
    return;
}

-(void) itemDisplay:(NSString *)name
{
    listName = name;
    [dataSync selectedItem:name];
    List1ViewController *aViewController = [List1ViewController alloc];
    aViewController.editMode = eListModeDisplay;
    aViewController = [aViewController initWithNibName:nil bundle:nil];
    [self.navViewController pushViewController:aViewController animated:YES];
    return;
}


-(void) itemDisplay:(NSString *)name lstcntr:(List1ViewController *)pLst
{
    listName = name;
    [dataSync selectedItem:name];
    List1ViewController *aViewController = [List1ViewController alloc];
    aViewController.editMode = eListModeDisplay;
    aViewController = [aViewController initWithNibName:nil bundle:nil];
    [self.navViewController pushViewController:aViewController animated:YES];
    [aViewController refreshListFromCpy:pLst];
    [aViewController.tableView reloadData];

    return;
}

-(void) showPicList:(NSString *)name pictName:(NSString *)picName imagePicker:(UIImagePickerController *) imagePick
{
    [imagePick dismissViewControllerAnimated:NO completion:^{
    [self popView];
    PhotoDisplayViewController *photoVwCntrl = [PhotoDisplayViewController alloc];
    photoVwCntrl.picName = picName;
    photoVwCntrl.listName = name;
    photoVwCntrl = [photoVwCntrl initWithNibName:nil bundle:nil];
    [self.navViewController pushViewController:photoVwCntrl animated:YES];
    }];

    return;
}

- (void)itemAddDone
{
    List1ViewController *pListView = (List1ViewController *)[self.navViewController popViewControllerAnimated:NO];
    [self popView];
    if (![pListView.itemMp count])
    {
        NSLog(@"Empty list not adding");
        return;
    }
    [pListView cleanUpItemMp];
    [self.dataSync addItem:pListView.name itemsDic:pListView.itemMp];
    [self itemDisplay:pListView.name lstcntr:pListView];
    ++no_of_lists;
    [kchain setObject:[[NSNumber numberWithLongLong:no_of_lists] stringValue] forKey:(__bridge id)kSecValueData];
       return;
}

-(void) itemEdit
{
    if (!appUtl.purchased && no_of_edits > 2)
    {
        NSLog(@"Cannot edit item further without upgrade edit count =%lu", (unsigned long)no_of_edits);
        UIAlertView *pAvw = [[UIAlertView alloc] initWithTitle:@"Purchase/restore now" message:@"Please upgrade/restore now for unlimited number of edits" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [pAvw show];
        return;
    }

    [self popView];
    List1ViewController *aViewController = [List1ViewController alloc];
    aViewController.editMode = eListModeEdit;
    aViewController = [aViewController initWithNibName:nil bundle:nil];
    [self.navViewController pushViewController:aViewController animated:YES];

    return;
}

-(void) itemEditDone
{
    List1ViewController *pListView = (List1ViewController *)[self.navViewController popViewControllerAnimated:NO];
    [self popView];
    [pListView cleanUpItemMp];
    [self.dataSync editItem:pListView.name itemsDic:pListView.itemMp];
    [self itemDisplay:pListView.name lstcntr:pListView];
    ++no_of_edits;
     [kchain setObject:[[NSNumber numberWithLongLong:no_of_edits] stringValue] forKey:(__bridge id)kSecAttrLabel];
    return;
}

-(void) itemEditCancel
{
    List1ViewController *pListView = (List1ViewController *)[self.navViewController popViewControllerAnimated:NO];
    [self itemDisplay:pListView.name];
    return;
}

- (void) itemAddCancel
{
    [self popView];
    return;
}

- (void) itemAddOptionsCancel
{
    [self popView];
    return;
}


- (void) templItemAddCancel
{
    [self.navViewController popViewControllerAnimated:NO];
    return;
}

-(void) inAppPurchaseActions: (NSInteger) buttonIndex
{
    switch (buttonIndex)
    {
        case 0:
        {
            if (dataSync.inAppCancelTimer)
            {
                UIAlertView *pAvw = [[UIAlertView alloc] initWithTitle:@"InApp purchase" message:@"InApp purchase in progress please try after 5 minutes." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [pAvw show];
                break;
            }
            dataSync.inAppCancelTimer = true;
            [inapp start:true];
        }
        break;
            
        case 1:
        {
            if (dataSync.inAppCancelTimer)
            {
                UIAlertView *pAvw = [[UIAlertView alloc] initWithTitle:@"InApp purchase" message:@"InApp purchase in progress please try after 5 minutes." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [pAvw show];
                break;
            }
            dataSync.inAppCancelTimer = true;
            [inapp start:false];
        }
        break;
            
        default:
            break;
    }
    
}

-(void) mainScreenActions: (NSInteger) buttonIndex
{
    switch (buttonIndex)
    {
        case 0:
        {
            
            MainViewController *pMainVwCntrl = [self.navViewController.viewControllers objectAtIndex:0];
            
            pSearchStr = nil;
            pMainVwCntrl.pSearchBar.text = nil;
            [pMainVwCntrl.pSearchBar resignFirstResponder];
            TemplListViewController *aViewController = [[TemplListViewController alloc]
                                                        initWithNibName:nil bundle:nil];
            [self.navViewController pushViewController:aViewController animated:YES];
        }
        break;
            
        case 1:
        {
            if (!appUtl.purchased)
            {
                NSLog(@"Cannot share item further without upgrade");
                UIAlertView *pAvw = [[UIAlertView alloc] initWithTitle:@"Purchase/restore now" message:@"Please upgrade now for sharing" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [pAvw show];
                return;
            }
            else
            {
                if (!bShrMgrStarted)
                {
                    [pShrMgr start];
                    bShrMgrStarted = true;
                }
                [appUtl showShareView];
               
            }
        }
        break;
            
        default:
            break;
    }
    
}





-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"Clicked button Index %ld", (long)buttonIndex);
    
    switch (eAction)
    {
        case eActnShetInAppPurchse:
            [self inAppPurchaseActions:buttonIndex];
            break;
            
        case eActnShetMainScreen:
            [self mainScreenActions:buttonIndex];
            break;
            
        default:
            break;
    }
    
}

-(void) mainScrnActions
{
   
    eAction = eActnShetMainScreen;
    
    UIActionSheet *pSh;
  
    
    pSh = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Template Lists", @"Share", nil];
    MainViewController *pMainVwCntrl = [self.navViewController.viewControllers objectAtIndex:0];
    [pSh showInView:pMainVwCntrl.pAllItms.tableView];
    [pSh setDelegate:self];

    
    return;
}

-(void) paymentInit
{
    kchain = [[KeychainItemWrapper alloc] initWithIdentifier:@"InAppData" accessGroup:@"3JEQ693MKL.com.rekhaninan.EasyGrocList"];
    
   
    NSString *listno = [kchain objectForKey:(__bridge id)kSecValueData];
    if (listno != nil)
        no_of_lists = [listno longLongValue];
    else
        no_of_lists = 0;
    NSString *templlistno = [kchain objectForKey:(__bridge id)kSecAttrComment];
    if (templlistno != nil)
        no_of_template_lists = [templlistno longLongValue];
    else
        no_of_template_lists = 0;
    
    
    NSString *editno = [kchain objectForKey:(__bridge id)kSecAttrLabel];
    if (listno != nil)
        no_of_edits = [editno longLongValue];
    else
        no_of_edits = 0;
    NSString *templeditno = [kchain objectForKey:(__bridge id)kSecAttrDescription];
    if (templeditno != nil)
        no_of_template_edits = [templeditno longLongValue];
    else
        no_of_template_edits = 0;

   
    inapp = [[InAppPurchase alloc] init];
    [inapp setDelegate:self];
    [inapp setProductId:@"com.rekhaninan.easygroclist_unlocked"];
    [[SKPaymentQueue defaultQueue] addTransactionObserver:inapp];

    NSString *purchKeyChain = [kchain objectForKey:(__bridge id)kSecAttrAccount];
    if (purchKeyChain != nil && [purchKeyChain isEqualToString:@"true"])
    {
        NSLog(@"Purchased true in key chain");
        appUtl.purchased = true;
    }
    else if (purchKeyChain == nil)
    {
        
    [kchain setObject:@"false" forKey:(__bridge id)kSecAttrAccount];
        
    }
    else if (![purchKeyChain isEqualToString:@"false"])
    {
        NSLog(@"Migrate legacy customer two");
        [kchain setObject:@"false" forKey:(__bridge id)kSecAttrAccount];
    }
    
    if (appUtl.purchased)
    {
        NSUserDefaults* kvlocal = [NSUserDefaults standardUserDefaults];
        
        NSString *transactionId = [kvlocal objectForKey:@"TransactionId"];
        
        if (transactionId == nil)
        {
            dataSync.inAppCancelTimer = true;
            [inapp start:false];
        }

    }
    NSLog(@"Keychain values no_of_lists %lld no_of_template_lists %lld  no_of_edits %lld no_of_template_edits %lld purchKeyChain %@", no_of_lists, no_of_template_lists, no_of_edits, no_of_template_edits, purchKeyChain);
    return;
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    [appUtl didRegisterForRemoteNotification:deviceToken];
    return;
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    NSLog(@"Failed to register for remote notification %@\n", error);
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    pShrMgr = [[EasyGrocShareMgr alloc] init];
    pShrMgr.pNtwIntf.connectAddr = @"easygroclist.ddns.net";
    pShrMgr.pNtwIntf.connectPort = @"16972";
    appUtl = [[AppShrUtil alloc] init];
    appUtl.pShrMgr = pShrMgr;
    bShrMgrStarted = false;
    bSystemAbrt = false;
    pFlMgr = [[NSFileManager alloc] init];
    NSURL *pHdir =[pFlMgr containerURLForSecurityApplicationGroupIdentifier:@"group.grocshared"];
    pThumbNailsDir = [pHdir URLByAppendingPathComponent:@"/Documents/pictures/thumbnails"];
    NSError *error;
    if ([pFlMgr createDirectoryAtURL:pThumbNailsDir withIntermediateDirectories:YES attributes:nil error:&error] == YES)
    {
        
        NSLog(@"Created album directory %@ \n", pThumbNailsDir);
    }
    else
        NSLog(@"Failed to create album directory %@ reason %@\n", pThumbNailsDir, [error localizedDescription]);
    NSLog(@"group container directory %@", [pFlMgr containerURLForSecurityApplicationGroupIdentifier:@"group.grocshared"]);

    pDocsDir = [pHdir URLByAppendingPathComponent:@"/Documents/"];
    pPicsDir = [pHdir URLByAppendingPathComponent:@"/Documents/pictures/"];
    
    dataSync = [[DataOps alloc] init];
    [dataSync start];
    
    [self paymentInit];

    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MainViewController *aViewController = [[MainViewController alloc]
                                           initWithNibName:nil bundle:nil];
    
    UINavigationController *navCntrl = [[UINavigationController alloc] initWithRootViewController:aViewController];
    self.navViewController = navCntrl;
    
        
   
    aViewController1 = [[MainViewController alloc]
                                           initWithNibName:nil bundle:nil];
    aViewController1.bShareView = true;
    
    
    UIImage *image = [UIImage imageNamed:@"895-user-group@2x.png"];
    UIImage *imageSel = [UIImage imageNamed:@"895-user-group-selected@2x.png"];
     aViewController1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Share" image:image selectedImage:imageSel];
    
    UINavigationController *mainVwNavCntrl = [[UINavigationController alloc] initWithRootViewController:aViewController1];
   
    
    self.window.backgroundColor = [UIColor whiteColor];
    //[self.window addSubview:self.navViewController.view];
    [self.window setRootViewController:self.navViewController];
    [self.window makeKeyAndVisible];
    appUtl.window = self.window;
    appUtl.navViewController = navViewController;
    id shrDelegate = [[SharingDelegate alloc] init];
    [appUtl initializeTabBarCntrl:mainVwNavCntrl ContactsDelegate:shrDelegate];
    if (appUtl.purchased)
        [appUtl registerForRemoteNotifications];
    return YES;
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    [pShrMgr getItems];
    return;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}


#pragma mark - Core Data stack

- (void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil)
    {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error])
        {
             // Replace this implementation with code to handle the error appropriately.
             // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. 
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
        NSLog(@"Saved MOC in GrocList iPhone app");
    }
}

// Returns the managed object context for the application.
// If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
- (NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    return _managedObjectContext;
}

// Returns the managed object model for the application.
// If the model doesn't already exist, it is created from the application's model.
- (NSManagedObjectModel *)managedObjectModel
{
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"EasyGrocList" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

// Returns the persistent store coordinator for the application.
// If the coordinator doesn't already exist, it is created and the application's store added to it.
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"EasyGrocList.sqlite"];
    
    NSError *error = nil;
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        
        bSystemAbrt = true;
        
         NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        
        UIAlertView *pAvw = [[UIAlertView alloc] initWithTitle:@"System error" message:@"Restart the app. If Delete the app and reinstall and  restart." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [pAvw show];

        /*
         Replace this implementation with code to handle the error appropriately.
         
         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. 
         
         Typical reasons for an error here include:
         * The persistent store is not accessible;
         * The schema for the persistent store is incompatible with current managed object model.
         Check the error message to determine what the actual problem was.
         
         
         If the persistent store is not accessible, there is typically something wrong with the file path. Often, a file URL is pointing into the application's resources directory instead of a writeable directory.
         
         If you encounter schema incompatibility errors during development, you can reduce their frequency by:
         * Simply deleting the existing store:
         [[NSFileManager defaultManager] removeItemAtURL:storeURL error:nil]
         
         * Performing automatic lightweight migration by passing the following dictionary as the options parameter:
         @{NSMigratePersistentStoresAutomaticallyOption:@YES, NSInferMappingModelAutomaticallyOption:@YES}
         
         Lightweight migration will only work for a limited set of schema changes; consult "Core Data Model Versioning and Data Migration Programming Guide" for details.
         
         */
       
        
    }    
    
    return _persistentStoreCoordinator;
}

#pragma mark - Application's Documents directory

// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    return pDocsDir;
}

@end
