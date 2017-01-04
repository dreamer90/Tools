//
//  TapImageTool.h
//  图片放大
//
//  Created by hyfsoft on 2017/1/3.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapImageTool : NSObject

+(void)showImage:(UIImageView *)avatarImageView;

+(void)hideImage:(UITapGestureRecognizer*)tap;
@end
