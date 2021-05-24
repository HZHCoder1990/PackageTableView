//
//  ViewController.m
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import "ViewController.h"
#import "HeroCell.h"
#import "NextViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong,nonatomic) UITableView *tableView;
@property (strong,nonatomic) NSArray *dataImages;
@property (strong,nonatomic) NSArray *dataNames;
@end

@implementation ViewController
static NSString *const KCellIdentifier = @"KCellIdentifier";
- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.title = @"分组列表";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(next)];
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    // 初始化数据源
    _dataNames = @[@[@"安其拉",@"蔡文姬",@"程咬金",@"貂蝉"],@[@"凯",@"鲁班",@"梦琪",@"小乔",@"猪八戒"]];
    _dataImages = @[@[@"安其拉.jpeg",@"蔡文姬.jpeg",@"程咬金.jpeg",@"貂蝉.jpeg"],@[@"凯.jpeg",@"鲁班.jpeg",@"梦琪.jpeg",@"小乔.jpeg",@"猪八戒.jpeg"]];
}
#pragma mark UITableViewDataSource && UITableViewDelegate
// 多少组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _dataNames.count;
}
// 每组多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_dataNames[section]count];
}
// 每行对应的cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    HeroCell *cell = [tableView dequeueReusableCellWithIdentifier:KCellIdentifier];
    if (cell == nil) {
        cell = [[HeroCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:KCellIdentifier];
    }
    cell.heroImageView.image = [UIImage imageNamed:_dataImages[indexPath.section][indexPath.row]];
    cell.heroNameLabel.text = _dataNames[indexPath.section][indexPath.row];
    return cell;
}
// 每行多高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
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

- (void)next{
    
    [self.navigationController pushViewController:[NextViewController new] animated:YES];
}
@end
