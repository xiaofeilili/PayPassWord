//
//  SecondViewController.h
//  PayPassWord
//
//  Created by mac on 16/1/16.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef BOOL(^QGblock)(int a);

@interface SecondViewController : UIViewController

- (void)setBlcok:(QGblock)block;

@end
