//
//  SectionHero.h
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import <Foundation/Foundation.h>
#import "YKGSectionProtocol.h"
@interface SectionHero : NSObject<YKGSectionProtocol>
- (instancetype)initWithDict:(NSDictionary *)dict;
@end

