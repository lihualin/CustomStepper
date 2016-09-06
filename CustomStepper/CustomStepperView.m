//
//  CustomStepperView.m
//  CustomStepper
//
//  Created by lihualin on 15/3/24.
//  Copyright (c) 2015年 lihualin. All rights reserved.
//
#define width self.frame.size.width/3
#define height self.frame.size.height

#import "CustomStepperView.h"

@implementation CustomStepperView
@synthesize miniMum,maxiMum,value;

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    self.leftBtn.frame = CGRectMake(0, 0, width, height);
    self.countLabel.frame = CGRectMake(width, 0, width, height);
    self.rightBtn.frame = CGRectMake(width*2, 0, width, height);
    self.leftBtn.layer.borderColor = _tineColor.CGColor;
    self.rightBtn.layer.borderColor = _tineColor.CGColor;
    self.countLabel.layer.borderColor = _tineColor.CGColor;
    self.backgroundColor = _tineColor;
    self.leftBtn.layer.borderWidth = 0.5;
    self.rightBtn.layer.borderWidth = 0.5;
    self.countLabel.layer.borderWidth = 0.5;
    
    self.leftBtn.backgroundColor = _backGroundColor;
    self.rightBtn.backgroundColor = _backGroundColor;
    self.countLabel.backgroundColor = _backGroundColor;
    
    [self.leftBtn setTitleColor:_normalBtnColor forState:UIControlStateNormal];
    [self.leftBtn setTitleColor:_hightBtnColor forState:UIControlStateHighlighted];
    [self.leftBtn setTitleColor:_disEabledBtnColor forState:UIControlStateDisabled];
    [self.rightBtn setTitleColor:_normalBtnColor forState:UIControlStateNormal];
    [self.rightBtn setTitleColor:_hightBtnColor forState:UIControlStateHighlighted];
    [self.rightBtn setTitleColor:_disEabledBtnColor forState:UIControlStateDisabled];
    self.countLabel.textColor = _labelColor;
    self.countLabel.text = [NSString stringWithFormat:@"%d",value];
    if (value == miniMum) {
        self.leftBtn.enabled = NO;
        self.rightBtn.enabled = YES;
    }else if (value == maxiMum) {
        self.leftBtn.enabled = YES;
        self.rightBtn.enabled = NO;
    }else{
        self.leftBtn.enabled = YES;
        self.rightBtn.enabled = YES;
    }
}

- (IBAction)btnClick:(UIButton *)sender {
    
    if (sender == self.leftBtn) {
        //减
        value--;
    }else{
        //加
        value++;
    }
    
    if (value == miniMum) {
        self.leftBtn.enabled = NO;
        self.rightBtn.enabled = YES;
    }else if (value == maxiMum) {
        self.leftBtn.enabled = YES;
        self.rightBtn.enabled = NO;
    }else{
        self.leftBtn.enabled = YES;
        self.rightBtn.enabled = YES;
    }
    
    self.countLabel.text = [NSString stringWithFormat:@"%d",value];
}
@end
