//
//  YKGCellViewModel.m
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import "YKGCellViewModel.h"
#import "SectionHero.h"
@interface YKGCellViewModel ()
@property (strong,nonatomic) NSMutableArray<id<YKGSectionProtocol>> *herosSection;
@end

@implementation YKGCellViewModel
- (NSMutableArray<id<YKGSectionProtocol>> *)herosSection{
    
    NSDictionary *dict1 = @{@"data":@[@{@"name":@"安其拉",@"icon":@"安其拉.jpeg"},
    @{@"name":@"蔡文姬",@"icon":@"蔡文姬.jpeg"},
    @{@"name":@"程咬金",@"icon":@"程咬金.jpeg"},
    @{@"name":@"貂蝉",@"icon":@"貂蝉.jpeg"}]};
    NSDictionary *dict2 = @{@"data":@[@{@"name":@"凯",@"icon":@"凯.jpeg"},
                                      @{@"name":@"鲁班",@"icon":@"鲁班.jpeg"},
                                      @{@"name":@"梦琪",@"icon":@"梦琪.jpeg"},
                                      @{@"name":@"小乔",@"icon":@"小乔.jpeg"},
                                      @{@"name":@"猪八戒",@"icon":@"猪八戒.jpeg"}]};
    
    SectionHero *sec1 = [[SectionHero alloc]initWithDict:dict1];
    SectionHero *sec2 = [[SectionHero alloc]initWithDict:dict2];
    return @[sec1,sec2].mutableCopy;
}
- (NSMutableArray<id<YKGSectionProtocol>> *)sections{
    return self.herosSection;
}


@end
