//
//  ViewController.m
//  L03
//
//  Created by Jianlei Hou on 5/18/15.
//  Copyright (c) 2015 Jianlei Hou. All rights reserved.
//

#import "ViewController.h"
#import "LabelView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *sv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    LabelView *myrect =[[LabelView alloc]initWithFrame:CGRectMake(10, 10, 80, 80)];
//    [self.sV addSubview:myrect];
//    myrect.backgroundColor = [UIColor greenColor];
//    CGRect sVBounds = self.sV.bounds;
//    CGRect labbel1Frame = myrect.frame;
//    
//    CGFloat labelX = (sVBounds.size.width- labbel1Frame.size.width)/2;
//    CGFloat labelY = (sVBounds.size.height -labbel1Frame.size.height)/2;
//    
//    CGRect newFrame = CGRectMake(labelX, labelY, labbel1Frame.size.width, labbel1Frame.size.height);
//    myrect.frame = newFrame ;
    
//    UILabel *numberlLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
//    
//    
//    CGRect  numberViewBounds =labelView1.bounds;
//    
//    CGRect numberFrame = numberlLabel.frame;
//    
//    CGFloat nlabelX = (numberViewBounds.size.width- numberFrame.size.width)/2;
//    CGFloat nlabelY = (numberViewBounds.size.height -numberFrame.size.height)/2;
//    
//    numberlLabel.text =@"1";
//    [labelView1 addSubview:numberlLabel];
//    
//    CGRect textFrame = CGRectMake(nlabelX, nlabelY, numberViewBounds.size.width, numberFrame.size.height);
//    
//    numberlLabel.frame = textFrame;
    //    CGFloat x = 30+ 170 * i ;
//    CGFloat y = 10+ 250 * i;
    

    CGFloat width = 120,height = 240;
    CGRect sc =[[UIScreen mainScreen] bounds];
    sc.size.height *=2;

    
    for (int i = 0; i < 3;  i++) {
        LabelView *multiRect = [[LabelView alloc] initWithFrame:CGRectMake(40,10+ 250 * i, width, height)];
        [self.sv addSubview:multiRect];
        multiRect.backgroundColor = [UIColor greenColor];
      
    }
    
    for (int j= 0; j < 3;  j++) {
        LabelView *multiRect = [[LabelView alloc] initWithFrame:CGRectMake(200,10+ 250 * j, width, height)];
        [self.sv addSubview:multiRect];
        multiRect.backgroundColor = [UIColor greenColor];
        
    }

}


//        int mod = i % 2;
//        if (mod ==0) {
//            x = 50 ;
//            
//            y = 150 ;
//

    //Scrollview
    
//    for (int i = 0 ; i<4; i++) {
//        LabelView *lview = [LabelView new];
//        CGFloat x, y,width ,height;
//               y = 30;
//        //variable
//        
//        width = 100 ;
//        height = 100 ;
//        
//        int mod = i % 2;
//        if ( mod == 0) {
//            x = 30 ;
//        }else
//        {
//            x = 30 + i * (width +50);
//   
//        }
//        
//        CGRect frame = CGRectMake(x, y, width, height);
//        
//        lview.frame = frame ;
//        
//        [self.sV addSubview:lview];
//        
//        


    // Do any additional setup after loading the view, typically from a nib.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
