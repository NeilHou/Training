//
//  AppDelegate.h
//  MyMovie
//
//  Created by Jianlei Hou on 6/7/15.
//  Copyright (c) 2015 Jianlei Hou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SearchViewController *searchViewController;
@end

