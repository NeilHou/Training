//
//  ViewController.m
//  L01_picture
//
//  Created by Jianlei Hou on 5/14/15.
//  Copyright (c) 2015 Jianlei Hou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int _times;
}

@end

@implementation ViewController
//    if (_times%2 == 0) {
//        [sender setImage:[UIImage imageNamed:@"cardBack@2x.png"] forState:UIControlStateNormal];
//        
//    }
//    else
//    {
//        [sender setImage:[UIImage imageNamed:@"cardFront@2x.png"] forState:UIControlStateNormal];
//    }



- (IBAction)pic:(UIButton *)sender {
    sender.selected =!sender.selected;
     [self cal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self cal];
    
}

    
- (void) cal
{
    _times += 1;
    self.number.text = [NSString stringWithFormat:@"%d",_times];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end




