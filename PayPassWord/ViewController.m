//
//  ViewController.m
//  PayPassWord
//
//  Created by mac on 16/1/14.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "QGPassWordTextField.h"
#import "SecondViewController.h"

#define kScreenWidth    [UIScreen mainScreen].bounds.size.width
#define kScreenHeight   [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@property (nonatomic, weak)UITextField * textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:230/255.0f green:230/255.0f blue:230/255.0f alpha:1.0f];
    // Do any additional setup after loading the view, typically from a nib.
    QGPassWordTextField * pass = [[QGPassWordTextField alloc]init];
    pass.frame = CGRectMake(10, 90, 300, 50);
    pass.passWordCount = 6;
    pass.textColor = [UIColor blueColor];
    [self.view addSubview:pass];
    self.textField = pass;
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.frame = CGRectMake(90, 150, 90, 90);
    [button addTarget:self action:@selector(onBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)onBtnClick{
    SecondViewController * secondVC = [[SecondViewController alloc]init];
    [secondVC setBlcok:^BOOL(int a) {
        if (a==5) {
            return YES;
        }else{
            return NO;
        }
    }];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",self.textField.text);
}

@end
