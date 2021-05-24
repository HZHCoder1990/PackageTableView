//
//  YKGTableView.h
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import <UIKit/UIKit.h>
#import "YKGCellViewModel.h"
#import "YGKViewProtocol.h"
@interface YKGTableView : UITableView<UITableViewDelegate,UITableViewDataSource,YGKViewProtocol>
@end

