//
//  MessageTranslator.m
//  EasyGrocList
//
//  Created by Ninan Thomas on 9/24/15.
//  Copyright (c) 2015 Ninan Thomas. All rights reserved.
//

#import "MessageTranslator.h"
#include "Constants.h"
#import "KeychainItemWrapper.h"

@implementation MessageTranslator

-(char *) createIdRequest:(NSString *) transactionId msgLen :(int *) len
{
    int tridLen = sizeof(long long);
    long long trid = [transactionId longLongValue];
    int msglen =  tridLen + 8;
    char *pGetIdMsg = (char *)malloc(msglen);
    memcpy(pGetIdMsg, &msglen, sizeof(int));
    int shareMsgId = GET_SHARE_ID_MSG;
    memcpy(pGetIdMsg+4, &shareMsgId, sizeof(int));
    memcpy(pGetIdMsg + 8, &trid, sizeof(long long));
    *len = msglen;
    return pGetIdMsg;
}

-(char *) getItems:(long long)shareId msgLen:(int *)len
{
    NSUUID *devId = [[UIDevice currentDevice] identifierForVendor];
    NSString *devIdStr = [devId UUIDString];
    int devIdLen = (int)[devIdStr length] +1;
    int msglen = 16 + devIdLen;
    char *pGetIdMsg = (char *)malloc(msglen);
    memcpy(pGetIdMsg, &msglen, sizeof(int));
    int msgId = GET_EASYGROC_ITEMS;
    memcpy(pGetIdMsg+4, &msgId, sizeof(int));
    memcpy(pGetIdMsg + 8, &shareId, sizeof(long long));
    [devIdStr getCString:(pGetIdMsg+16) maxLength:devIdLen encoding:NSASCIIStringEncoding];
    *len = msglen;
    return pGetIdMsg;
}

-(char *) storeDeviceToken: (long long) shareId deviceToken:(NSString *)token msgLen:(int *)len
{
    int devTknLen = (int) [token length] +1;
    NSUUID *devId = [[UIDevice currentDevice] identifierForVendor];
    NSString *devIdStr = [devId UUIDString];
    int devIdLen = (int)[devIdStr length] +1;
    
    int msglen = devTknLen + devIdLen + 16;
    char *pGetIdMsg = (char *)malloc(msglen);
    memcpy(pGetIdMsg, &msglen, sizeof(int));
     int storeDevTknMsgId = STORE_EASYGROC_DEVICE_TKN_MSG;
    memcpy(pGetIdMsg+4, &storeDevTknMsgId, sizeof(int));
    memcpy(pGetIdMsg+8, &shareId, sizeof(long long));
    [token getCString:(pGetIdMsg+16) maxLength:devTknLen encoding:NSASCIIStringEncoding];
    [devIdStr getCString:(pGetIdMsg+16 + devTknLen) maxLength:devIdLen encoding:NSASCIIStringEncoding];
    
    *len = msglen;
    return pGetIdMsg;
}

-(char *) storeTrnIdRequest:(NSString *) transactionId share_id:(long long) shareId msgLen :(int *) len
{
    int tridLen = (int)[transactionId length]+1;
    int msglen = tridLen + 16;
    char *pGetIdMsg = (char *)malloc(msglen);
    memcpy(pGetIdMsg, &msglen, sizeof(int));
    int storeTrnMsgId =STORE_TRNSCTN_ID_MSG;
    memcpy(pGetIdMsg+4, &storeTrnMsgId, sizeof(int));
    memcpy(pGetIdMsg+8, &shareId, sizeof(long long));
    [transactionId getCString:(pGetIdMsg+16) maxLength:tridLen encoding:NSASCIIStringEncoding];
    *len = msglen;
    return pGetIdMsg;

}

-(char *) updateFriendListRequest: (long long) shareId  msgLen:(int *) len
{
    if (!shareId)
        return NULL;
    KeychainItemWrapper *kchain = [[KeychainItemWrapper alloc] initWithIdentifier:@"SharingData" accessGroup:@"3JEQ693MKL.com.rekhaninan.sharing"];
    
    NSString* friendList = [kchain objectForKey:(__bridge id)kSecAttrComment];
    if (friendList == nil)
        return  NULL;
    int frndLen = (int) [friendList length] + 1;
    int msglen = frndLen + 8 + sizeof(long long);
    char *pStoreFrndMsg = (char *)malloc(msglen);
    memcpy(pStoreFrndMsg, &msglen, sizeof(int));
    int storeFrndListMsg = STORE_FRIEND_LIST_MSG;
    memcpy(pStoreFrndMsg + sizeof(int), &storeFrndListMsg, sizeof(int));
    memcpy(pStoreFrndMsg+8, &shareId, sizeof(long long));
    [friendList getCString:(pStoreFrndMsg + 2*sizeof(int)+sizeof(long long)) maxLength:frndLen encoding:NSASCIIStringEncoding];
    *len = msglen;
    return pStoreFrndMsg;
    
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
