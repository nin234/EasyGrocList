//
//  InterfaceController.m
//  EasyGrocList WatchKit Extension
//
//  Created by Ninan Thomas on 3/7/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import "InterfaceController.h"
#import <CoreData/CoreData.h>
#import "WRowController.h"

@interface InterfaceController()

@end


@implementation InterfaceController

@synthesize dataObj;
@synthesize picList;
@synthesize itmList;
@synthesize isImage;


- (void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];
    NSLog(@"Populating data in awakeWithContext");
    photo_scale = 0.5;
     [dataObj setNeedActivate:true];
    bActivatedinAwake = true;
    [self populateDisplayData];
    [dataObj setNeedActivate:false];
    return;
    
}

-(void) populateDisplayData
{

    // Configure interface objects here.
    NSString * name = [[NSString alloc] init];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *itemsIndices = [[NSMutableArray alloc] init];
    int isReallyEmpty =0;
    isImage = [dataObj getData:name itemList:items itemIndx:itemsIndices isEmpty:&isReallyEmpty];
    noItemsInIphone = false;
    
    if (isImage)
    {
        //add image
        NSError *err;
        NSURL *albumurl = dataObj.pPicsDir;
        NSURL *imgUrl;
        NSLog(@"Trying to set image as the list");
        
        if (albumurl != nil && [albumurl checkResourceIsReachableAndReturnError:&err])
        {
            imgUrl = [albumurl URLByAppendingPathComponent:name isDirectory:NO];
        }
        
        if ([imgUrl checkResourceIsReachableAndReturnError:&err] == YES)
        {
            //struct stat buf;
            // stat([pFlPath UTF8String], &buf);
            NSLog (@"Loading image in EasyDisplayViewController %@ \n", imgUrl);
            
            NSLog(@"Using scaled imageWithData scale=%f",  photo_scale);
           UIImage* fullScreenImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:imgUrl] scale:photo_scale];
             [itmList setHidden:YES];
            [picList setImage:fullScreenImage];
           
        }

    }
    else
    {
        //populate table data
        NSLog(@"Setting item list %lu items", (unsigned long)[items count]);
        [picList setHidden:YES];
        [itmList setNumberOfRows:[items count] withRowType:@"mainRowType"];
        for (NSInteger row = 0; row <  itmList.numberOfRows; row++)
        {
            WRowController* theRow = [itmList rowControllerAtIndex:row];
            NSString* itemName = [items objectAtIndex:row];
            NSLog(@"Setting row item %@", itemName);
            
            [theRow.listElem setTitle:@""];
            [theRow.listValue setText:itemName];
            theRow.rowIndx = row;
            theRow.itmIntfCntrl = self;
            theRow.itmText = itemName;
            theRow.itemsIndxInMOC = [[itemsIndices objectAtIndex:row] unsignedLongValue];
            
        }
        
        if (![items count])
        {
            NSLog(@"isReallyEmpty = %d", isReallyEmpty);
             NSArray* fieldNames = nil;
            if (isReallyEmpty == 0)
            {
                fieldNames = [NSArray arrayWithObjects:@"Create new", @"iPhone list", @"and restart", @"watch app", nil];
                noItemsInIphone = true;
            }
            else if (isReallyEmpty== 1)
            {
                 fieldNames = [NSArray arrayWithObjects:@"Select", @"one", @"list in", @"iPhone", nil];
            }
            else
            {
                fieldNames = [NSArray arrayWithObjects:@"Press", @"screen", @"to show", @"all items", nil];
            }
          [itmList setNumberOfRows:[fieldNames count] withRowType:@"mainRowType"];
            for (NSInteger row = 0; row <  itmList.numberOfRows; row++)
            {
                WRowController* theRow = [itmList rowControllerAtIndex:row];
                [theRow.listElem setTitle:[fieldNames objectAtIndex:row]];
                theRow.rowIndx = row;
                theRow.itmIntfCntrl= self;
                theRow.itmText = [fieldNames objectAtIndex:row];
                theRow.itemsIndxInMOC = 1000000;
                [theRow.listElem setTitle:@""];
                [theRow.listValue setText:[fieldNames objectAtIndex:row]];
            }
            
        }
    }
}

- (void)willActivate
{
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSLog(@"In InterfaceController:willActivate");
    if (bActivatedinAwake)
    {
        [dataObj setNeedActivate:false];
        NSLog(@"dataObject already activated");
        bActivatedinAwake = false;
    }
    else
    {
        NSLog(@"dataObject needs activation");
        [dataObj setNeedActivate:true];
        NSLog(@"Populating data in willActivate");
        [self populateDisplayData];
    }
   
    
}

- (void)didDeactivate
{
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    NSLog(@"InterfaceController:didDeactivate");

}

- (instancetype)init
{
    
    self = [super init];
    dataObj = [[DataAccessor alloc] init];
    bActivatedinAwake = false;
    NSLog(@"Initialized apple watch interface %d", bActivatedinAwake);
    return self;
}

- (void) setHidden: (NSUInteger) indxInMOC
{
    if (indxInMOC == 1000000)
        return;
    [dataObj setHidden:indxInMOC];
    NSLog(@"saving context in InterfaceController:setHidden");
    [dataObj saveContext];
    return;
}


- (IBAction)ShowAllListItems
{
    if (isImage)
    {
         NSLog(@"Image main item so showing all list items returning");
        return;
    }
    if (noItemsInIphone)
    {
        NSLog(@"No items in iPhone so showing all list items returning");
        return;
    }
    NSLog(@"Clearing hidden flag and showing all list items");
    
    [dataObj clearHidden];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    NSMutableArray *itemsIndices = [[NSMutableArray alloc] init];

    
    NSString * name = [[NSString alloc] init];
    int isReallyEmpty=0;
    isImage = [dataObj getData:name itemList:items itemIndx:itemsIndices isEmpty:&isReallyEmpty];
    if([items count])
    {
        [itmList setNumberOfRows:[items count] withRowType:@"mainRowType"];
        for (NSInteger row = 0; row <  itmList.numberOfRows; row++)
        {
            WRowController* theRow = [itmList rowControllerAtIndex:row];
            NSString* itemName = [items objectAtIndex:row];
            NSLog(@"Setting row item %@", itemName);
            
            [theRow.listElem setTitle:@""];
            [theRow.listValue setText:itemName];
            theRow.rowIndx = row;
            theRow.itmIntfCntrl = self;
            theRow.itmText = itemName;
            theRow.itemsIndxInMOC = [[itemsIndices objectAtIndex:row] unsignedLongValue];
            
        }
    }
    NSLog(@"saving context in InterfaceController:ShowAllListItems");
    [dataObj saveContext];

}
@end



