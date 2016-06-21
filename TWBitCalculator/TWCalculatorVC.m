//
//  TWCalculatorVC.m
//  TWBitCalculator
//
//  Created by TooWalker on 6/21/16.
//  Copyright © 2016 TooWalker. All rights reserved.
//

#import "TWCalculatorVC.h"

#define kScreenWidth                [UIScreen mainScreen].bounds.size.width
#define kScreenHeight               [UIScreen mainScreen].bounds.size.height
#define kTextFieldPlaceHolder       @"Please enter a number here"

@interface TWCalculatorVC ()

@end

@implementation TWCalculatorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    /** textField */
    CGFloat textFieldX = 10;
    CGFloat textFieldY = 44 + 20;
    CGFloat textFieldW = kScreenWidth - textFieldX * 2;
    CGFloat textFieldH = 40;
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(textFieldX, textFieldY, textFieldW, textFieldH)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.keyboardType = UIKeyboardTypePhonePad;
    textField.placeholder = kTextFieldPlaceHolder;
    [self.view addSubview:textField];
    
    /** btnsView */
    CGFloat btnsViewX = textFieldX;
    CGFloat btnsViewY = CGRectGetMaxY(textField.frame) + 10;
    CGFloat btnsViewW = kScreenWidth;
    CGFloat btnsViewH = 50;
    UIView *btnsView = [[UIView alloc] initWithFrame:CGRectMake(btnsViewX, btnsViewY, btnsViewW, btnsViewH)];
    [self.view addSubview:btnsView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
