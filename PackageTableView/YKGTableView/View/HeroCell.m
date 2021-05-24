//
//  HeroCell.m
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import "HeroCell.h"
#import <Masonry.h>

@interface HeroCell ()

@end

@implementation HeroCell
// 重写父类的初始化方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        // 取消cell的选中效果
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        //tips: 使用Masonry布局的话 要先把控件添加到父视图上再进行布局 否则会出现崩溃!!!
        // 初始化控件
        _heroImageView = [[UIImageView alloc]init];
        // 设置圆角
        _heroImageView.layer.cornerRadius = 25;
        _heroImageView.layer.masksToBounds = YES;
        [self.contentView addSubview:_heroImageView];
        
        _heroNameLabel = [[UILabel alloc]init];
        _heroNameLabel.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_heroNameLabel];
        
        // 布局
        [_heroImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(0); // 在Y方向上居中
            make.left.mas_equalTo(0).offset(15); // 距离左边15个像素
            make.size.mas_equalTo(CGSizeMake(50, 50));
        }];
        
        [_heroNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(_heroImageView);// 在Y方向上中心点和_heroImageView对齐
            make.left.mas_equalTo(_heroImageView.mas_right).offset(10);// 距离_heroImageView右边10个像素
        }];
    }
    return self;
}
- (void)bindVM:(HeroViewModel *)vm{
    
    self.heroImageView.image = [UIImage imageNamed:vm.hero.icon];
    self.heroNameLabel.text = vm.hero.name;
}
@end
