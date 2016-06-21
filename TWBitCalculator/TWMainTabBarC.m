//
//  TWMainTabBarC.m
//  TWBitCalculator
//
//  Created by TooWalker on 6/21/16.
//  Copyright © 2016 TooWalker. All rights reserved.
//

#import "TWMainTabBarC.h"
#import "TWCalculatorVC.h"
#import "TWSettingVC.h"

@interface TWMainTabBarC ()

@end

@implementation TWMainTabBarC

- (void)viewDidLoad {
    [super viewDidLoad];
    TWCalculatorVC *calVC = [[TWCalculatorVC alloc] init];
    UITabBarItem *calTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Calculator" image:[UIImage imageNamed:@"math"] tag:0];
    calVC.tabBarItem = calTabBarItem;
    
    TWSettingVC *setVC = [[TWSettingVC alloc] init];
    UITabBarItem *setTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Settings" image:[UIImage imageNamed:@"settings"] tag:1];
    setVC.tabBarItem = setTabBarItem;
    
    self.viewControllers = @[calVC, setVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
