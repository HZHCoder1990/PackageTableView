//
//  HeroCell.h
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import <UIKit/UIKit.h>
#import "HeroViewModel.h"
@interface HeroCell : UITableViewCell
@property (strong,nonatomic) UIImageView *heroImageView;
@property (strong,nonatomic) UILabel *heroNameLabel;

// 传递VM
- (void)bindVM:(HeroViewModel *)vm;
@end

