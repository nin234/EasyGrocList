//
//  AppDelegate.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 2/28/13.
//  Copyright (c) 2013 Ninan Thomas. All rights reserved.
//

#import "AppDelegate.h"
#import "common/EasyAddViewController.h"
#import "common/ListViewController.h"
#import "common/List1ViewController.h"
#import "common/TemplListViewController.h"
#import "common/EasyDisplayViewController.h"
#import "sharing/HomeViewController.h"
#import "common/AppCmnUtil.h"

@implementation AppDelegate



@synthesize dataSync;
@synthesize pFlMgr;
@synthesize pThumbNailsDir;
@synthesize pPicsDir;
@synthesize pDocsDir;

@synthesize fetchQueue;
@synthesize aViewController1;

@synthesize navViewController;
@synthesize no_of_lists;
@synthesize no_of_template_lists;
@synthesize no_of_edits;
@synthesize no_of_template_edits;
@synthesize kchain;

@synthesize pShrMgr;
@synthesize pShrDelegate;
@synthesize templViewCntrl;


@synthesize appUtl;




-(void) popView
{
    //putchar('N');
    [self.navViewController popViewControllerAnimated:NO];
    NSArray *vw = [self.navViewController viewControllers];
    NSUInteger cnt = [vw count];
    NSLog(@"No of view controllers %lu \n", (unsigned long)cnt);
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
    
    

    return;
}

-(void) shareContactsSetSelected
{
    
    self.appUtl.selFrndCntrl.bModeShare = true;
    self.appUtl.tabBarController.selectedIndex = 1;
    

}

-(void) shareMgrStartAndShow
{
    NSLog(@"Showing share view %s %d", __FILE__, __LINE__);
    NSArray *subViews = [easyShareVw subviews];
    bool bFound = false;
    for (UIView *vw in subViews)
    {
        if (vw == aViewController1.pAllItms.tableView)
        {
            NSLog(@"Found tableview subview of aViewController1 %s %d", __FILE__, __LINE__);
            bFound = true;
        }
    }
    if (!bFound)
    {
        NSLog(@"Failed to find tableView as subview of easyShareVw");
        return;
    }

    if (!bShrMgrStarted)
    {
        NSLog(@"Starting shareMgr");
        [pShrMgr start];
        bShrMgrStarted = true;
    }
    
        [appUtl showShareView];
    [aViewController1.pAllItms refreshList];
    

}

-(void) templShareMgrStartAndShow
{
    if (!bShrMgrStarted)
    {
        [pShrMgr start];
        bShrMgrStarted = true;
    }
   
    pShrDelegate.templList = true;
    templViewCntrl = [[TemplListViewController alloc]
                                                initWithNibName:nil bundle:nil];
    templViewCntrl.bShareTemplView = true;
    [mainVwNavCntrl pushViewController:templViewCntrl animated:YES];
    [appUtl showTemplShareView];
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
    pShrMgr.pNtwIntf.connectPort = @"16791";
    appUtl = [[AppShrUtil alloc] init];
    appUtl.pShrMgr = pShrMgr;
    bSystemAbrt = false;
    bShrMgrStarted = false;
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
    dataSync.appName = @"EasyGrocList";
    [dataSync start];
    
    AppCmnUtil *pAppCmnUtil = [AppCmnUtil sharedInstance];
    
    pAppCmnUtil.dataSync = dataSync;
    pAppCmnUtil.pFlMgr = pFlMgr;
    pAppCmnUtil.pPicsDir    = pPicsDir;
    pAppCmnUtil.pThumbNailsDir = pThumbNailsDir;
    

    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    EasyViewController *aViewController = [EasyViewController alloc];
    
    aViewController.bShareView = false;
    aViewController.delegate = self;
    aViewController = [aViewController initWithNibName:nil bundle:nil];
    UINavigationController *navCntrl = [[UINavigationController alloc] initWithRootViewController:aViewController];
    self.navViewController = navCntrl;
    dataSync.navViewController = navCntrl;
    pAppCmnUtil.navViewController = navCntrl;
    pAppCmnUtil.bEasyGroc = true;
    
        
   
    aViewController1 = [EasyViewController alloc];
    
    aViewController1.bShareView = true;
    aViewController1.delegate = self;
    aViewController1 = [aViewController1 initWithNibName:nil bundle:nil];
    
    UIImage *image = [UIImage imageNamed:@"895-user-group@2x.png"];
    UIImage *imageSel = [UIImage imageNamed:@"895-user-group-selected@2x.png"];
     aViewController1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Share" image:image selectedImage:imageSel];
    
    mainVwNavCntrl = [[UINavigationController alloc] initWithRootViewController:aViewController1];
   

    pAppCmnUtil.aViewController1 = aViewController1;
    
    //The assignement to easyShareVw is just a dummy one to invoke loadView of aViewController1
     easyShareVw = aViewController1.view;
    self.window.backgroundColor = [UIColor whiteColor];
    //[self.window addSubview:self.navViewController.view];
    [self.window setRootViewController:self.navViewController];
    [self.window makeKeyAndVisible];
    appUtl.window = self.window;
    appUtl.navViewController = navViewController;
    pShrDelegate = [[SharingDelegate alloc] init];
    id shrDelegate = pShrDelegate;
    [appUtl initializeTabBarCntrl:mainVwNavCntrl ContactsDelegate:shrDelegate];
    
    [appUtl registerForRemoteNotifications];
    [pShrMgr start];
    bShrMgrStarted = true;

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
    [self.dataSync saveEasyContext];
}


#pragma mark - Core Data stack


// Returns the managed object context for the application.
// If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
#pragma mark - Application's Documents directory

// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    return pDocsDir;
}

@end
