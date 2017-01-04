//
//  ViewController.m
//  图片放大
//
//  Created by hyfsoft on 2017/1/3.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "ViewController.h"
#import "TapImageTool.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imgView.userInteractionEnabled = YES;
    
    [_imgView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImageClick)]];
}


-(void)tapImageClick
{
    [TapImageTool showImage:_imgView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
