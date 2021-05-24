//
//  HeroViewModel.m
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import "HeroViewModel.h"
#import "HeroCell.h"
@interface HeroViewModel()
@property (strong,nonatomic,readwrite) Hero *hero;
@end

@implementation HeroViewModel
+ (HeroViewModel *)generateViewModel:(Hero *)hero{
    HeroViewModel *vm = [[HeroViewModel alloc]init];
    vm.hero = hero;
    return vm;
}
- (NSString *)reuseIdentifier{
    return @"HeroIdentifier";
}
- (Class)cellClass{
    return [HeroCell class];
}
- (CGFloat)cellHeight{
    return 80;
}
@end
