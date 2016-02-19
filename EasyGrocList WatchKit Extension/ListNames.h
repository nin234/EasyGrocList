//
//  ListNames.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 4/6/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface ListNames : NSManagedObject
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate   *date;
@property (nonatomic, retain) NSString * picurl;
@property BOOL current;

@end
