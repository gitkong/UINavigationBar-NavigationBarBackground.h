//
//  SecondViewController.m
//  OC_Demo
//
//  Created by clarence on 16/9/1.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "UINavigationBar+NavigationBarBackground.h"
#define RANDOM_RGB [UIColor colorWithRed:arc4random_uniform(256) / 255.0  green:arc4random_uniform(256) / 255.0 blue:arc4random_uniform(256) / 255.0 alpha:1.0]
@interface SecondViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation SecondViewController{
    BOOL _flage;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    _flage = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"second viewController";
    
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    [self.navigationController.navigationBar fl_setBackgroundViewWithColor:[UIColor clearColor]];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (!_flage) {
//        CGPoint offset = scrollView.contentOffset;
        [self.navigationController.navigationBar fl_setBackgroundViewWithColor:RANDOM_RGB];
    }
    
}

#pragma mark - Table view data source & delegate
static NSString * resueId = @"cell";

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:resueId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:resueId];
    }
    cell.textLabel.text = @"hello world";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.navigationController pushViewController:[[ThirdViewController alloc] init] animated:YES];
//    [self.navigationController.navigationBar fl_setBackgroundViewWithColor:[UIColor redColor]];
    _flage = YES;
}


@end
