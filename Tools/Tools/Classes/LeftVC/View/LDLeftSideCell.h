//
//  LDLeftSideCell.h
//  Tools
//
//  Created by hyfsoft on 2017/1/5.
//  Copyright © 2017年 hyfsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDLeftSideCell : UITableViewCell

/*** title ***/
@property (nonatomic , copy) NSString * titleStr;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
