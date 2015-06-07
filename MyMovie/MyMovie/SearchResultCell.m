//
//  SearchResultCell.m
//  MyMovie
//
//  Created by Jianlei Hou on 6/7/15.
//  Copyright (c) 2015 Jianlei Hou. All rights reserved.
//

#import "SearchResultCell.h"

@implementation SearchResultCell

- (void)awakeFromNib {
    [super awakeFromNib];
    UIView *selectedView = [[UIView alloc] initWithFrame:CGRectZero];
    selectedView.backgroundColor = [UIColor colorWithRed:20/255.0f green:160/255.0f blue:160/255.0f alpha:0.5f];
    self.selectedBackgroundView = selectedView;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
