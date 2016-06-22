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
#define kBtnMargin                  10
#define kTextFieldPlaceHolder       @"Please enter a number here"

@interface TWCalculatorVC ()

@property (nonatomic, weak) UIView *btnsView;

@end

@implementation TWCalculatorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    /** textField */
    CGFloat textFieldX = 10;
    CGFloat textFieldY = 50;
    CGFloat textFieldW = kScreenWidth - textFieldX * 2;
    CGFloat textFieldH = 30;
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(textFieldX, textFieldY, textFieldW, textFieldH)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.keyboardType = UIKeyboardTypePhonePad;
    textField.placeholder = kTextFieldPlaceHolder;
    [self.view addSubview:textField];
    
    /** btnsView */
    CGFloat btnsViewX = textFieldX;
    CGFloat btnsViewY = CGRectGetMaxY(textField.frame) + 10;
    CGFloat btnsViewW = kScreenWidth - btnsViewX * 2;
    CGFloat btnsViewH = 30;
    UIView *btnsView = [[UIView alloc] initWithFrame:CGRectMake(btnsViewX, btnsViewY, btnsViewW, btnsViewH)];
    self.btnsView = btnsView;
//    btnsView.backgroundColor = [UIColor redColor];
    [self.view addSubview:btnsView];
    
    
//    CGFloat btn2bX = 0;
//    CGFloat btn2bY = 0;
//    CGFloat margin = 10;
//    CGFloat btn2bW = (btnsViewW - (margin * 4)) / 5;
//    CGFloat btn2bH = btnsViewH;
//    
//    UIButton *btn2b = [[UIButton alloc] initWithFrame:CGRectMake(btn2bX, btn2bY, btn2bW, btn2bH)];
//    btn2b.layer.borderWidth = 1;
//    btn2b.layer.cornerRadius = 5;
//    btn2b.layer.borderColor = [UIColor colorWithWhite:0.400 alpha:1.000].CGColor;
//    [btn2b setTitle:@"2-bit" forState:UIControlStateNormal];
//    [btn2b.titleLabel setFont:[UIFont systemFontOfSize:13]];
//    [btn2b setTitleColor:[UIColor colorWithWhite:0.400 alpha:1.000] forState:UIControlStateNormal];
//    [btn2b setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
//    [btnsView addSubview:btn2b];
    
    UIButton *btn2b = [self btnWithTitle:@"2-bit" frameX:0];
    
    CGFloat btn8bX = CGRectGetMaxX(btn2b.frame) + kBtnMargin;
    UIButton *btn8b = [self btnWithTitle:@"8-bit" frameX:btn8bX];
    
    CGFloat btn10bX = CGRectGetMaxX(btn8b.frame) + kBtnMargin;
    UIButton *btn10b = [self btnWithTitle:@"10-bit" frameX:btn10bX];
    
    CGFloat btn16bX = CGRectGetMaxX(btn10b.frame) + kBtnMargin;
    UIButton *btn16b = [self btnWithTitle:@"16-bit" frameX:btn16bX];
    
    CGFloat btn32bX = CGRectGetMaxX(btn16b.frame) + kBtnMargin;
    UIButton *btn32b = [self btnWithTitle:@"32-bit" frameX:btn32bX];
    
}

- (UIButton *)btnWithTitle:(NSString *)title frameX:(CGFloat)x{
    CGFloat btnX = x;
    CGFloat btnY = 0;
    CGFloat btnW = (self.btnsView.frame.size.width - (kBtnMargin * 4)) / 5;
    CGFloat btnH = self.btnsView.frame.size.height;
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(btnX, btnY, btnW, btnH)];
    btn.layer.borderWidth = 1;
    btn.layer.cornerRadius = 5;
    btn.layer.borderColor = [UIColor colorWithWhite:0.400 alpha:1.000].CGColor;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:13]];
    [btn setTitleColor:[UIColor colorWithWhite:0.400 alpha:1.000] forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [btn addTarget:self action:@selector(bitBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.btnsView addSubview:btn];
    return btn;
}

- (void)bitBtnClick:(UIButton*)sender{
    for (UIButton *btn in self.btnsView.subviews) {
        if (btn.selected) {
            btn.selected = NO;
        }
    }
    sender.selected = !sender.selected;
    for (UIButton *btn in self.btnsView.subviews) {
        if (btn.selected) {
            btn.backgroundColor = [UIColor colorWithRed:0.082 green:0.494 blue:0.984 alpha:1.000];
            btn.layer.borderWidth = 0;
        } else {
            btn.backgroundColor = [UIColor whiteColor];
            btn.layer.borderWidth = 1;
        }
    }

    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
