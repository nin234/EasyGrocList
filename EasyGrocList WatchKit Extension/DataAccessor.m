//
//  DataAccessor.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 4/6/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import "DataAccessor.h"
#import <CoreData/CoreData.h>
#import "ListNames.h"
#import "List.h"

@implementation DataAccessor

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;
@synthesize pThumbNailsDir;
@synthesize pPicsDir;
@synthesize pDocsDir;
@synthesize listCnt;
@synthesize listNamesTmp;
@synthesize listTmp;
@synthesize listName;
@synthesize pFlMgr;
@synthesize needActivate;


-(bool) getData:(NSString *) name itemList:(NSMutableArray *) items itemIndx:(NSMutableArray *)itemsIndices isEmpty:(int *)isReallyEmpty;
{
    NSEntityDescription *descr = [NSEntityDescription entityForName:@"ListNames" inManagedObjectContext:self.managedObjectContext];
    NSFetchRequest *req = [[NSFetchRequest alloc] init];
    [req setEntity:descr];
    NSError *error = nil;
    if (error != nil)
    {
        NSLog(@"Error in fetch request %@", error);
    }
    listNamesTmp = [self.managedObjectContext executeFetchRequest:req error:&error];
    
    
    listCnt = [listNamesTmp count];
    bool piclist = false;
    picDic = [[NSMutableDictionary alloc] init];
    NSLog(@"Refreshing list data count=%ld\n", (long)listCnt);
    
    bool bCurrent = false;
    for (NSInteger i=0; i < listCnt; ++i)
    {
        ListNames *mnameRow = [listNamesTmp objectAtIndex:i];
        NSLog(@"ListName at index = %ld  name=%@ current=%d picurl=%@", (long)i, mnameRow.name, mnameRow.current, mnameRow.picurl);
        if (mnameRow.current == NO)
            continue;
        
        if (mnameRow.picurl != nil)
        {
            piclist = true;
            name = mnameRow.picurl;
        }
        else
            name = mnameRow.name;
        bCurrent = true;
        break;
    }
    
    listName = name;
    if(piclist)
        return true;
    
    NSUInteger listcnt=0;
    
    if(bCurrent)
    {
    
        descr = [NSEntityDescription entityForName:@"List" inManagedObjectContext:self.managedObjectContext];
        [req setEntity:descr];
        NSSortDescriptor* listDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name"
                                                                       ascending:YES];
        NSSortDescriptor* rownoDescriptor = [[NSSortDescriptor alloc] initWithKey:@"rowno"
                                                                        ascending:YES];
        NSArray *sortDescriptors = [NSArray arrayWithObjects:listDescriptor, rownoDescriptor, nil];
        listTmp = [[self.managedObjectContext executeFetchRequest:req error:&error]sortedArrayUsingDescriptors:sortDescriptors];
        listcnt = [listTmp count];
        NSLog(@"No of items in List %lu", (unsigned long)listcnt);
        NSLog(@"Name of selected list %@", name);
        listArr = [NSMutableDictionary dictionaryWithCapacity:listcnt];
        for (NSUInteger i=0; i < listcnt; ++i)
        {
            List *item = [listTmp objectAtIndex:i];
            NSLog(@"Adding item to list %@\n", item);
            if ([name isEqualToString:item.name] && item.hidden == NO)
            {
                [items addObject:item.item];
                [itemsIndices addObject:[NSNumber numberWithUnsignedLong:i]];
            }
                    
        }
    }
    
    NSLog(@"listcnt=%lu, listCnt=%ld, bCurrent=%d", (unsigned long)listcnt, (long)listCnt, bCurrent);
    if (!listcnt)
    {
        if(!listCnt)
            *isReallyEmpty = 0;
        else if (!bCurrent)
            *isReallyEmpty = 1;
        else
            *isReallyEmpty = 0;
    }
    else
        *isReallyEmpty = 2;
    
    return false;
}

-(bool) isNameChanged
{
    NSEntityDescription *descr = [NSEntityDescription entityForName:@"ListNames" inManagedObjectContext:self.managedObjectContext];
    NSFetchRequest *req = [[NSFetchRequest alloc] init];
    [req setEntity:descr];
    NSError *error = nil;
    listNamesTmp = [self.managedObjectContext executeFetchRequest:req error:&error];
    //NSArray *listNamesTmp1 = [self.managedObjectContext executeFetchRequest:req error:&error];
    if (error != nil)
    {
        NSLog(@"Error in fetch request %@", error);
    }
    NSString *name = [[NSString alloc] init];
    
    listCnt = [listNamesTmp count];
    NSLog(@"Number of listnames = %ld", (long)listCnt);
    
    picDic = [[NSMutableDictionary alloc] init];
    for (NSInteger i=0; i < listCnt; ++i)
    {
        ListNames *mnameRow = [listNamesTmp objectAtIndex:i];
        NSLog(@"ListName details %@", mnameRow);
        NSString *mname = mnameRow.name;
        if (mnameRow.current == NO)
            continue;
        
        if (mnameRow.picurl != nil)
        {
            name = mnameRow.picurl;
        }
        else
            name = mname;
        break;
    }
    if ([name isEqualToString:listName])
    {
        NSLog(@"List name did not change old name %@ new name %@", listName, name);
        return false;
    }
    NSLog(@"List name changed old name %@ new name %@", listName, name);
    return true;
 
}

- (void) setHidden: (NSUInteger) indxInMOC
{
    List *item = [listTmp objectAtIndex:indxInMOC];
    if (item != nil)
    {
        NSLog(@"Setting item hidden for %lu", (unsigned long)indxInMOC);
        item.hidden = YES;
    }
    return;
}

-(void) clearHidden
{
    NSUInteger listcnt = [listTmp count];
    for (NSUInteger i=0; i < listcnt; ++i)
    {
        List *item = [listTmp objectAtIndex:i];
        item.hidden = NO;
    }
}

- (instancetype)init
{
    NSLog(@"Initializing apple watch interface");
    self = [super init];
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
    
    return self;
}



#pragma mark - Core Data stack
- (void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error])
        {
            // Replace this implementation with code to handle the error appropriately.
            // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
        NSLog(@"Saved managed object context");
    }
}



// Returns the managed object context for the application.
// If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
- (NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext != nil)
    {
        if (!needActivate)
            return _managedObjectContext;
    }
    
    NSLog(@"Initializing MOC in Watch kit extension");
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    needActivate = false;
    return _managedObjectContext;
}

// Returns the managed object model for the application.
// If the model doesn't already exist, it is created from the application's model.
- (NSManagedObjectModel *)managedObjectModel
{
    if (_managedObjectModel != nil)
    {
        if (!needActivate)
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
    if (_persistentStoreCoordinator != nil)
    {
        if (!needActivate)
            return _persistentStoreCoordinator;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"EasyGrocList.sqlite"];
    
    NSError *error = nil;
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
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
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
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
