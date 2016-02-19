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
    char *pMsgToSend = NULL;
    int len =0;
    pMsgToSend = [self.pTransl storeTemplItem:self.share_id itemName:name itemsDic:itmsMp msgLen:&len];
    [self putMsgInQ:pMsgToSend msgLen:len];
    return;
}

-(void) storeDeviceToken:(NSString *)token
{
    char *pMsgToSend = NULL;
    int len =0;
    pMsgToSend = [self.pTransl storeDeviceToken:self.share_id deviceToken:token msgLen:&len];
    [self putMsgInQ:pMsgToSend msgLen:len];
    return;
}

-(void) getItems
{
    char *pMsgToSend = NULL;
    int len =0;
    pMsgToSend = [self.pTransl getItems:self.share_id msgLen:&len];
    [self putMsgInQ:pMsgToSend msgLen:len];
    return;
}



-(void) shareList:(NSString *) list listName:(NSString *)name   
{
    char *pMsgToSend = NULL;
    int len =0;
    pMsgToSend = [self.pTransl shareListMsg:self.share_id shareList:list listName:name msgLen:&len];
    [self putMsgInQ:pMsgToSend msgLen:len];
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
