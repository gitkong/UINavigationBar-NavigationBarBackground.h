//
//  ViewController.m
//  UINavigationBarBackground
//
//  Created by clarence on 16/11/2.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"点击屏幕跳转";
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[[SecondViewController alloc] init] animated:YES];
}


@end
