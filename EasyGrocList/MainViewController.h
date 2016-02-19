//
//  MainViewController.h
//  EasyGrocList
//
//  Created by Ninan Thomas on 3/5/13.
//  Copyright (c) 2013 Ninan Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainListViewController.h"

@interface MainViewController : UIViewController <UISearchBarDelegate>

@property (strong, nonatomic) MainListViewController *pAllItms;
@property (strong, nonatomic) UISearchBar *pSearchBar;
@property (nonatomic) bool bShareView;

- (void)enableCancelButton:(UISearchBar *)aSearchBar;

@end
