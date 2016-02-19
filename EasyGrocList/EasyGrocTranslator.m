//
//  MessageTranslator.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 9/24/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import "EasyGrocTranslator.h"
#include "Constants.h"


@implementation EasyGrocTranslator



-(char *) getItems:(long long)shareId msgLen:(int *)len
{
    return [self getItems:shareId msgLen:len msgId:GET_EASYGROC_ITEMS];
}


-(char *) storeTemplItem:(long long) shareId  itemName:(NSString *)name itemsDic:(NSMutableDictionary*) itmsMp msgLen:(int *) len
{
    if (!shareId)
        return NULL;
    if (![itmsMp count])
        return NULL;
    
    NSString *storeLst = [NSString stringWithString:name];
    
    
    for (NSNumber *rowno in itmsMp)
    {
        NSString *item = [itmsMp objectForKey:rowno];
        storeLst = [storeLst stringByAppendingString:[rowno stringValue]];
        storeLst = [storeLst stringByAppendingString:@":"];
        storeLst = [storeLst stringByAppendingString:item];
        storeLst = [storeLst stringByAppendingString:@":;"];
        
    }
    
    int storeLen = (int)[storeLst length] + 1;
    int msglen = storeLen + 2*sizeof(int) + sizeof(long long);
    char *pStoreLst = (char *)malloc(msglen);
    memcpy(pStoreLst, &msglen, sizeof(int));
    int storeLstMsgId = STORE_TEMPL_LIST_MSG;
    memcpy(pStoreLst + sizeof(int), &storeLstMsgId, sizeof(int));
    memcpy(pStoreLst + 2*sizeof(int), &shareId, sizeof(long long));
    int nameLen = (int)[name length];
    int nameoffset = 2*sizeof(int)+sizeof(long long);
    memcpy(pStoreLst + nameoffset, &nameLen, sizeof(int));
    int templLstLen = (int)([storeLst length] - nameLen);
    int storelenoffset = 3*sizeof(int)+sizeof(long long);
    memcpy(pStoreLst + storelenoffset, &templLstLen, sizeof(int));
    int storelstoffset = 4*sizeof(int)+sizeof(long long);
    [storeLst getCString:(pStoreLst + storelstoffset) maxLength:storeLen encoding:NSASCIIStringEncoding];
    *len = msglen;
    return pStoreLst;
    
}

-(char *) shareListMsg:(long long) shareId shareList: (NSString *) shareLst listName:(NSString *)name msgLen:(int *)len
{
    int nameLen = (int)[name length] + 1;
    int listLen = (int) [shareLst length] +1;
    int msglen = 4*sizeof(int) + nameLen + listLen + sizeof(long long);
    *len = msglen;
    int shareListMsgId = SHARE_LIST_MSG;
    char *pStoreLst = (char *)malloc(msglen);
    memcpy(pStoreLst, &msglen, sizeof(int));
    memcpy(pStoreLst+sizeof(int), &shareListMsgId, sizeof(int));
     memcpy(pStoreLst + 2*sizeof(int), &shareId, sizeof(long long));
    int namelenoffset = 2*sizeof(int) + sizeof(long long);
    memcpy(pStoreLst+ namelenoffset, &nameLen, sizeof(int));
    int listlenoffset = namelenoffset+sizeof(int);
    memcpy(pStoreLst+listlenoffset, &listLen, sizeof(int));
    int nameoffset = listlenoffset + sizeof(int);
    [name getCString:(pStoreLst+nameoffset) maxLength:nameLen encoding:NSASCIIStringEncoding];
    int shareoff = nameoffset+nameLen;
    [shareLst getCString:(pStoreLst+shareoff) maxLength:listLen encoding:NSASCIIStringEncoding];
    return pStoreLst;
}

@end
