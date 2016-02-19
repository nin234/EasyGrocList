//
//  InAppPurchase.h
//  Shopper
//
//  Created by Ninan Thomas on 2/28/15.
//
//

#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>
#import <UIKit/UIKit.h>

@interface InAppPurchase : NSObject<UIAlertViewDelegate, SKProductsRequestDelegate, SKPaymentTransactionObserver>
{
    SKProduct *product;
    SKProductsRequest *productsRequest;
    bool bIgnoreAlertVwClck;
    bool bPurchase;
}

@property (nonatomic) bool initialReq;
-(void) start:(bool) purchase;
-(void) stop;

@end
