//
//  Hero.m
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import "Hero.h"

@implementation Hero
- (instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        self.name = dict[@"name"];
        self.icon = dict[@"icon"];
    }
    return self;
}


@end
