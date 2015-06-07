//
//  SearchViewController.m
//  MyMovie
//
//  Created by Jianlei Hou on 6/7/15.
//  Copyright (c) 2015 Jianlei Hou. All rights reserved.
//

#import "SearchViewController.h"
#import "SearchResult.h"
#import "SearchResultCell.h"
#import <AFNetworking/AFNetworking.h>

static NSString * const SearchResultCellIdentifier = @"SearchResultCell";

static NSString * const NothingFoundCellIdentifier = @"NothingFoundCell";

@interface SearchViewController ()
<UITableViewDataSource,UITableViewDelegate, UISearchBarDelegate>

@end

@implementation SearchViewController
{
    NSMutableArray *_searchResults;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
    // Do any additional setup after loading the view from its nib.
    
    
    UINib *cellNib = [UINib nibWithNibName:SearchResultCellIdentifier bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:SearchResultCellIdentifier];
    
    self.tableView.rowHeight = 80;
    
    cellNib = [UINib nibWithNibName:NothingFoundCellIdentifier bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:NothingFoundCellIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_searchResults == nil) {
        return 0;
    } else if ([_searchResults count] == 0) {
        return 1;
    } else {
        return [_searchResults count]; }
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([_searchResults count] == 0) {
        return [tableView dequeueReusableCellWithIdentifier: NothingFoundCellIdentifier forIndexPath:indexPath];
    } else {
        SearchResultCell *cell = (SearchResultCell *)[tableView
                                                      dequeueReusableCellWithIdentifier: SearchResultCellIdentifier forIndexPath:indexPath];
        SearchResult *searchResult = _searchResults[indexPath.row]; cell.nameLabel.text = searchResult.name; cell.artistNameLabel.text = searchResult.artistName;
        return cell;
    }
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];
    _searchResults = [NSMutableArray arrayWithCapacity:10];
    if (![searchBar.text isEqualToString:@"justin bieber"]) {
    for (int i = 0; i < 3; i++) {
        
        SearchResult *searchResult = [[SearchResult alloc] init];
        searchResult.name = [NSString stringWithFormat:@"Fake Result %d for", i];
        searchResult.artistName = searchBar.text;
        [_searchResults addObject:searchResult];
    }
    }
        [self.tableView reloadData];
}

- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar {
    return UIBarPositionTopAttached; }



#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{if ([_searchResults count] == 0) { return nil;
} else {
    return indexPath;
} }
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
