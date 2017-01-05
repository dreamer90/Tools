//
//  LeftSideViewController.m
//  Tools
//
//  Created by hyfsoft on 2017/1/3.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "LeftSideViewController.h"
#import "LDLeftSideCell.h"

@interface LeftSideViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

/*** 侧边栏标题 ***/
@property (nonatomic , strong) NSArray * titles;

@end

@implementation LeftSideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化tableview
    [self setupTableView];
}

-(void)setupTableView
{
    _titles = @[@"首页",@"消息",@"朋友圈",@"通讯录",@"组织切换",@"动画"];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([LDLeftSideCell class]) bundle:nil] forCellReuseIdentifier:@"cellID"];
}


#pragma mark - tableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _titles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    LDLeftSideCell * cell = [LDLeftSideCell cellWithTableView:tableView];
    if (_titles[indexPath.row] != nil) {
        
        cell.titleStr = _titles[indexPath.row];
    }
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [[UIView alloc] init];
}

@end
