//
//  LDLeftSideCell.m
//  Tools
//
//  Created by hyfsoft on 2017/1/5.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import "LDLeftSideCell.h"

@interface LDLeftSideCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@end

@implementation LDLeftSideCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString * cellID = @"cellID";
    LDLeftSideCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[LDLeftSideCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    return cell;
}

-(void)setTitleStr:(NSString *)titleStr
{
    _titleStr = titleStr;
    
    _titleLabel.text = titleStr;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}

@end
