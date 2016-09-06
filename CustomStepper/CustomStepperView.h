//
//  CustomStepperView.h
//  CustomStepper
//
//  Created by lihualin on 15/3/24.
//  Copyright (c) 2015年 lihualin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomStepperView : UIView
@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;
- (IBAction)btnClick:(UIButton *)sender;
@property (nonatomic , assign) NSInteger miniMum; //最小值
@property (nonatomic , assign) NSInteger maxiMum; //最大值
@property (nonatomic , assign) NSInteger value; //取值
@property (nonatomic , retain) UIColor * tineColor; //线框颜色
@property (nonatomic , retain) UIColor * normalBtnColor; //按钮背景默认色值
@property (nonatomic , retain) UIColor * hightBtnColor; // 按钮背景高亮色值
@property (nonatomic , retain) UIColor * disEabledBtnColor; // 按钮背景不能点击时色值
@property (nonatomic , retain) UIColor * labelColor;  //文字背景色值
@property (nonatomic , retain) UIColor * backGroundColor;  //背景色值
@end
