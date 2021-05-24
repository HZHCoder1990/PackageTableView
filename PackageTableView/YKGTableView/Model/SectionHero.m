//
//  SectionHero.m
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import "SectionHero.h"
#import "HeroViewModel.h"

@interface SectionHero ()
@property (strong,nonatomic) NSMutableArray<id<YKGRowProtocol>> *results;
@end
@implementation SectionHero
- (NSMutableArray<id<YKGRowProtocol>> *)cellViewModels{
    return self.results;
}
- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        _results = [NSMutableArray array];
        NSArray *array = dict[@"data"];
        for (NSDictionary *t in array) {
            Hero *h = [[Hero alloc]initWithDict:t];
            HeroViewModel *vm = [HeroViewModel generateViewModel:h];
            [self.results addObject:vm];
        }
    }
    return self;
}
@end
