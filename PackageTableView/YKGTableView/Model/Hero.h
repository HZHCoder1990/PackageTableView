//
//  Hero.h
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import <Foundation/Foundation.h>
#import "YKGRowProtocol.h"

@interface Hero : NSObject
@property (copy,nonatomic) NSString *name;
@property (copy,nonatomic) NSString *icon;
- (instancetype)initWithDict:(NSDictionary *)dict;
@end

