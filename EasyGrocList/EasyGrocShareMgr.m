//
//  ShareMgr.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 9/22/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import "EasyGrocShareMgr.h"
#import "EasyGrocTranslator.h"
#import "EasyGrocDecoder.h"



@implementation EasyGrocShareMgr



-(void) storeTemplItemInCloud:(NSString *)name itemsDic:(NSMutableDictionary*) itmsMp
{
    
    NSString *storeLst = [self.pTransl getTemplItemStr:itmsMp];
    [self archiveItem:storeLst itemName:name];
    return;
}


- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.pTransl = [[EasyGrocTranslator alloc] init];
        self.pDecoder = [[EasyGrocDecoder alloc] init];
    }
    return self;
}



- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    return;
}

@end
