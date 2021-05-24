//
//  YKGTableView.m
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import "YKGTableView.h"
#import "HeroCell.h"
@interface YKGTableView()
@property (strong,nonatomic,readwrite) id<YKGTableViewProtocol>vm;
@end

@implementation YKGTableView

- (instancetype)initWithFrame:(CGRect)frame
                        style:(UITableViewStyle)style{
    self = [super initWithFrame:frame
                          style:style];
    [self setupViews];
    return self;
}

- (void)setupViews{
    
    // 进行一些初始化设置
    self.dataSource = self;
    self.delegate = self;
    self.tableFooterView = [UIView new];
}
// 实现YGKViewProtocol协议
- (void)bindVM:(id<YKGTableViewProtocol>)vm{
    // 保存vm
    _vm = vm;
}
#pragma mark UITableViewDataSource && UITableViewDelegate
// 多少组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.vm.sections.count;
}
// 每组多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (self.vm.sections.count <= section) return 0;
    //取出每一组的数组
    id<YKGSectionProtocol> sectionData = self.vm.sections[section];
    // 返回每一组row的个数
    return [[sectionData cellViewModels]count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    id<YKGRowProtocol> cellViewModel = [self.vm.sections[indexPath.section]cellViewModels][indexPath.row];
    UITableViewCell *cell = nil;
    NSString *reuseIdentifier = [cellViewModel reuseIdentifier];
    cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell){
        Class cellClass = cellViewModel.cellClass;
        if ([cellClass isSubclassOfClass:[UITableViewCell class]] &&
            [cellClass instancesRespondToSelector:@selector(initWithStyle:reuseIdentifier:)]){
            cell = [[cellClass alloc] initWithStyle:UITableViewCellStyleDefault
                                    reuseIdentifier:reuseIdentifier];
        }else{
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:reuseIdentifier];
        }
    }
    [((HeroCell *)cell) bindVM:cellViewModel];
    return cell;
}

#pragma mark 为了简便 这里把头部视图和尾部视图写成固定的
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    id<YKGRowProtocol> cellViewModel = [self.vm.sections[indexPath.section]cellViewModels][indexPath.row];
    return [cellViewModel cellHeight];
}
// 每组的头部视图
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
}
// 每组的尾部视图
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}
// 头部视图的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}
// 尾部视图的高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 20;
}
@end
