//
//  YKGTableViewProtocol.h
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import <Foundation/Foundation.h>
#import "YKGSectionProtocol.h"
@protocol YKGTableViewProtocol <NSObject>
// 存放多少组
@property (strong,nonatomic) NSMutableArray<id<YKGSectionProtocol>> *sections;
@end

