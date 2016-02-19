//
//  WRowController.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 3/9/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import "WRowController.h"

@implementation WRowController


@synthesize listElem;
@synthesize itmIntfCntrl;
@synthesize rowIndx;
@synthesize listValue;
@synthesize itmText;
@synthesize itemsIndxInMOC;

- (IBAction)listOnOff:(BOOL)value
{
    NSLog(@"Received switch toggle %d " ,value );
    if (value == NO)
    {
        NSLog(@"removing table row at index %lu", (unsigned long)rowIndx);
        NSMutableIndexSet *indexes = [NSMutableIndexSet indexSetWithIndex:rowIndx];
        NSUInteger oldIndx = rowIndx;
        
        [itmIntfCntrl setHidden:itemsIndxInMOC];
        //Update row indexes after a row is removed
        NSLog(@"No of rows remaining %ld", (long)itmIntfCntrl.itmList.numberOfRows);
        for (NSInteger row = 0; row <  itmIntfCntrl.itmList.numberOfRows; row++)
        {
            NSUInteger newIndx;
            if (row < oldIndx)
                newIndx =row;
            else
                newIndx = row - 1;
            
            WRowController* theRow = [itmIntfCntrl.itmList rowControllerAtIndex:row];
            theRow.rowIndx = newIndx;
            NSLog(@"Set new index %lu for item %@", (unsigned long)theRow.rowIndx, theRow.itmText);
        }
        
        [itmIntfCntrl.itmList removeRowsAtIndexes:indexes];
        NSLog(@"removed table row at index %lu", (unsigned long)oldIndx);

    }
}


@end
