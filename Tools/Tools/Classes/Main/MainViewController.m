//
//  MainViewController.m
//  Tools
//
//  Created by hyfsoft on 2016/12/29.
//  Copyright © 2016年 hyfsoft. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "LeftSideViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    HomeViewController * homeVC = [[HomeViewController alloc] init];
    homeVC.view.backgroundColor = kWhiteColor;
    UINavigationController * homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    LeftSideViewController * leftSideVC = [[LeftSideViewController alloc] init];
    
    self.centerViewController = homeNav;
    self.leftDrawerViewController = leftSideVC;
    
    [self setMaximumLeftDrawerWidth:220];
    
    [self setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [self setShouldStretchDrawer:NO];
    
    [self setShowsShadow:NO];
}

@end
