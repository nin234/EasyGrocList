//
//  MessageTranslator.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 9/24/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface MessageTranslator : NSObject


-(char *) createIdRequest:(NSString *) transactionId msgLen :(int *) len;
-(char *) storeTrnIdRequest:(NSString *) transactionId share_id:(long long) shareId msgLen :(int *) len;


-(char *) updateFriendListRequest: (long long) shareId  msgLen :(int *) len;

-(char *) storeTemplItem:(long long) shareId itemName:(NSString *)name itemsDic:(NSMutableDictionary*) itmsMp msgLen :(int *) len;
-(char *) shareListMsg:(long long) shareId shareList:(NSString *) shareLst  listName: (NSString* ) name msgLen:(int *)len;

-(char *) storeDeviceToken: (long long) shareId deviceToken:(NSString *)token msgLen:(int *)len;
-(char *) getItems:(long long) shareId msgLen:(int *)len;

@end
