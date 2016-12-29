//
//  UIWindow+Extension.m
//  Tools
//
//  Created by hyfsoft on 2016/12/29.
//  Copyright © 2016年 hyfsoft. All rights reserved.
//

#import "UIWindow+Extension.h"
#import "LaunchViewController.h"

@implementation UIWindow (Extension)

- (void)showLaunch{

    LaunchViewController * VC = [[LaunchViewController alloc] init];
    
    [self addSubview:VC.view];
}

@end
