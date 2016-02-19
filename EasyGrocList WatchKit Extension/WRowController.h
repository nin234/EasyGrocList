//
//  WRowController.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 3/9/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>
#import "InterfaceController.h"

@interface WRowController : NSObject


@property (weak, nonatomic) IBOutlet WKInterfaceSwitch *listElem;
@property NSUInteger rowIndx;
@property NSUInteger itemsIndxInMOC;
@property (weak, nonatomic) InterfaceController *itmIntfCntrl;
@property(strong, nonatomic) NSString *itmText;

- (IBAction)listOnOff:(BOOL)value;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *listValue;


@end
