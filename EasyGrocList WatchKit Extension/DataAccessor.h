//
//  DataAccessor.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 4/6/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface DataAccessor : NSObject
{
    //array of the list names
    NSMutableArray *listNamesArr;
    NSMutableDictionary *picDic;
    
     NSMutableDictionary *listArr;
}

@property (nonatomic, retain) NSString *listName;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property bool needActivate;

-(bool) getData:(NSString *) name itemList:(NSMutableArray *) items itemIndx:(NSMutableArray *)itemsIndices isEmpty:(int *) isReallyEmpty;
- (void)saveContext;
- (void) setHidden: (NSUInteger) indxInMOC;
-(void) clearHidden;

-(bool) isNameChanged;

- (NSURL *)applicationDocumentsDirectory;
@property (nonatomic, retain) NSURL *pThumbNailsDir;
@property (nonatomic, retain) NSURL *pPicsDir;
@property (nonatomic, retain) NSURL *pDocsDir;
@property (nonatomic, retain) NSFileManager *pFlMgr;
@property (nonatomic, retain) NSArray *listTmp;
@property (nonatomic, retain) NSArray *listNamesTmp;
@property NSInteger listCnt;



@end
