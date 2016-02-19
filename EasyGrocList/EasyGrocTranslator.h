//
//  MessageTranslator.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 9/24/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sharing/MessageTranslator.h>



@interface EasyGrocTranslator : MessageTranslator


-(char *) storeTemplItem:(long long) shareId itemName:(NSString *)name itemsDic:(NSMutableDictionary*) itmsMp msgLen :(int *) len;
-(char *) shareListMsg:(long long) shareId shareList:(NSString *) shareLst  listName: (NSString* ) name msgLen:(int *)len;


-(char *) getItems:(long long) shareId msgLen:(int *)len;

@end
