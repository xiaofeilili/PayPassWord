//
//  SecondViewController.m
//  PayPassWord
//
//  Created by mac on 16/1/16.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    // Do any additional setup after loading the view.
}

- (void)setBlcok:(QGblock)block{
   BOOL IS5 = block(10);
    if (IS5) {
        NSLog(@"5");
    }else{
        NSLog(@"BUSHI 5");
    }
}

@end
