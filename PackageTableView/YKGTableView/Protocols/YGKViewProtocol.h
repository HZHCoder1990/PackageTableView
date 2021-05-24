//
//  YGKViewProtocol.h
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import <Foundation/Foundation.h>
#import "YKGTableViewProtocol.h"
@protocol YGKViewProtocol <NSObject>
// 绑定ViewModel
- (void)bindVM:(id<YKGTableViewProtocol>)vm;
@end

