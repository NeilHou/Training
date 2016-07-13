//
//  ViewController.m
//  L04-tableview
//
//  Created by Jianlei Hou on 5/20/15.
//  Copyright (c) 2015 Jianlei Hou. All rights reserved.
//

#import "ViewController.h"

#import "Student.h"

@interface ViewController () <UITableViewDataSource> ,<uitablevi>
@property(strong,nonatomic)UITableView *tableView;

@property (strong,nonatomic)NSArray *studentsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//self
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds
                                                         style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    self.tableView.delegate =self;
    
    
    self.tableview.registerClass:[UITableViewCell Class]//告诉in什么类
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
