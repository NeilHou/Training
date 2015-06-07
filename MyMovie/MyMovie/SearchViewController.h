//
//  SearchViewController.h
//  MyMovie
//
//  Created by Jianlei Hou on 6/7/15.
//  Copyright (c) 2015 Jianlei Hou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController

@property (nonatomic, weak) IBOutlet UISearchBar *searchBar;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
