//
//  ViewController.m
//  L04-tableview
//
//  Created by Jianlei Hou on 5/20/15.
//  Copyright (c) 2015 Jianlei Hou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(strong,nonatomic)UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds
                                                         style:UITableViewStylePlain];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
