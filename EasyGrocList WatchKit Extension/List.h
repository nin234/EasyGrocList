//
//  List.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 4/6/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface List : NSManagedObject


@property long long rowno;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * item;
@property (nonatomic, retain) NSDate   *date;
@property BOOL hidden;

@end
