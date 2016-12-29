//
//  LaunchViewController.m
//  Tools
//
//  Created by hyfsoft on 2016/12/29.
//  Copyright © 2016年 hyfsoft. All rights reserved.
//

#import "LaunchViewController.h"
#import "LaunchViewController.h"


@interface LaunchViewController ()

@property (nonatomic , strong)UIImageView * launchImage;
@property (nonatomic , strong)UIImageView * logoImage;
@property (nonatomic , strong)UILabel * imageLabel;

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.launchImage];
    [self.view addSubview:self.logoImage];
    [self.view addSubview:self.imageLabel];
    
}

-(UIImageView *)launchImage
{
    if (_launchImage == nil) {
        _launchImage = [[UIImageView alloc] init];
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
