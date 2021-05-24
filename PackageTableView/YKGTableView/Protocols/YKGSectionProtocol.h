//
//  YKGSectionProtocol.h
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import <Foundation/Foundation.h>
#import "YKGRowProtocol.h"
// 每一组的信息
@protocol YKGSectionProtocol <NSObject>
@property (nonatomic ,strong)NSMutableArray<id<YKGRowProtocol>> *cellViewModels;
@end
