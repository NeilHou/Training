//
//  ViewController.m
//  L02
//
//  Created by Jianlei Hou on 5/17/15.
//  Copyright (c) 2015 Jianlei Hou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
 //issue testing

- (IBAction)sd1:(UIButton *)sender {
    _nameLabel.text = @"Harden";
    
    
    _ageLabel.text = @"24";
   
    
    _idLabel.text = @"fear bear";

    _classLabel.text = @"houston";

    
    _hobbyLabel.text = @"basketball";

}
- (IBAction)sd2:(id)sender {
}
//close #2

//related to #2

//- (instancetype)initWithName:(NSString *)name
//                  age:((NSString *)age
//                    :(NSString *)sNumber
//{
//    // Call the superclass's designated initializer
//    self = [super init];
//    
//    // Did the superclass's designated initializer succeed?
//    if (self) {
//        // Give the instance variables initial values
//        _itemName = name;
//        _serialNumber = sNumber;
//        _valueInDollars = value;
//        // Set _dateCreated to the current date and time
//        _dateCreated = [[NSDate alloc] init];
//    }
//       return self;
//}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//close issue
@end
