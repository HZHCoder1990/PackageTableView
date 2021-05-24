//
//  YKGRowProtocol.h
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol YKGRowProtocol <NSObject>
/// creat by cellClass
- (Class)cellClass;
/// 返回cell重用标识
- (NSString *)reuseIdentifier;
/// cell高度
- (CGFloat)cellHeight;
@end

