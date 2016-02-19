//
//  InterfaceController.h
//  EasyGrocList WatchKit Extension
//
//  Created by Ninan Thomas on 3/7/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DataAccessor.h"




@interface InterfaceController : WKInterfaceController
{
    CGFloat photo_scale;
    bool noItemsInIphone;
    bool bActivatedinAwake;
    
}
@property (nonatomic, retain) DataAccessor *dataObj;


@property (weak, nonatomic) IBOutlet WKInterfaceImage *picList;
@property (weak, nonatomic) IBOutlet WKInterfaceTable *itmList;
@property bool isImage;
- (void) setHidden: (NSUInteger) indxInMOC;

- (IBAction)ShowAllListItems;

@end
