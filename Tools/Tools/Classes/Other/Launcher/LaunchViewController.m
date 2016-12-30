//
//  LaunchViewController.m
//  Tools
//
//  Created by hyfsoft on 2016/12/29.
//  Copyright © 2016年 hyfsoft. All rights reserved.
//

#import "LaunchViewController.h"
#import "HttpTool.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "LaunchImage.h"
#import <MJExtension/MJExtension.h>
#import "UIView+Extension.h"


static CGFloat const animDuration = 3.0;

@interface LaunchViewController ()

@property (nonatomic , strong)UIImageView * launchImage;
@property (nonatomic , strong)UIImageView * logoImage;
@property (nonatomic , strong)UILabel * imageLabel;

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.launchImage];
    [self.view bringSubviewToFront:self.launchImage];
    [self.view addSubview:self.imageLabel];
    
    // 启动动画
    [self updateLaunchImage];
}

/*
 * 启动动画
 */
-(void)updateLaunchImage
{
    NSString * path = @"http://news-at.zhihu.com/api/4/start-image/1080*1776";
    
    [HttpTool GET:path paramameters:nil success:^(id responseObj) {
        
        LaunchImage * launch = [LaunchImage mj_objectWithKeyValues:responseObj];
        
        SDWebImageManager * manage = [SDWebImageManager sharedManager];
        [manage downloadImageWithURL:[NSURL URLWithString:launch.img] options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize) {
            
        } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
            
            [NSThread sleepForTimeInterval:1];
            
            self.launchImage.image = image;
            self.imageLabel.text = launch.text;
            [_imageLabel sizeToFit];
            _imageLabel.centerX = self.view.center.x;
            _imageLabel.y = self.view.y - 30;
            
           [UIView animateWithDuration:animDuration animations:^{
               _launchImage.transform = CGAffineTransformMakeScale(1.2, 1.2);
           } completion:^(BOOL finished) {
               [self.view removeFromSuperview];
           }];
        }];
        
    } error:^(NSError *error) {
        
    }];
}

-(UIImageView *)launchImage
{
    if (_launchImage == nil) {
        _launchImage = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _launchImage.contentMode = UIViewContentModeScaleAspectFit;
        _launchImage.image = [UIImage imageNamed:@"Default"];
    }
    return _launchImage;
}
-(UIImageView *)logoImage
{
    if (_logoImage == nil) {
        _logoImage = [[UIImageView alloc] init];
        _logoImage.contentMode = UIViewContentModeScaleAspectFit;
        _logoImage.image = [UIImage imageNamed:@"Login_Logo"];
    }
    return _logoImage;
}

-(UILabel *)imageLabel
{
    if (_imageLabel == nil) {
        _imageLabel = [[UILabel alloc] init];
        _imageLabel.font = [UIFont systemFontOfSize:15];
        _imageLabel.textColor = [UIColor whiteColor];
    }
    return _imageLabel;
}
@end
