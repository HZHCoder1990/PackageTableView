//
//  NextViewController.m
//  PackageTableView
//
//  Created by mac on 2021/5/24.
//

#import "NextViewController.h"
#import "YKGTableView.h"
#import "YKGCellViewModel.h"
@interface NextViewController ()
@property (strong,nonatomic) YKGCellViewModel *vm;
@property (strong,nonatomic) YKGTableView *tableView;
@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 初始化ViewModel
    _vm = [[YKGCellViewModel alloc]init];
    // 初始化tableView
    _tableView = [[YKGTableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    // binding
    [self.tableView bindVM:_vm];
    
    [self.view addSubview:_tableView];
}

@end
