//
//  ViewController.m
//  CustomStepper
//
//  Created by lihualin on 15/3/24.
//  Copyright (c) 2015年 lihualin. All rights reserved.
//

#import "ViewController.h"
#import "CustomStepperView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self showStepper];
   //界面上绘制不同字体 颜色 大小的字符串
    
    NSString * str= @"洛家华丽的婚礼夜宴，她不是主角，作为姐姐的代理孕母，她替姐姐偷偷地睡在了新婚之夜的大床上，一夜溺爱后，拖着狼狈的身子悄然去。\n那夜她赔上自己的第一次，她告诉自己这一切只是为了帮助姐姐，千万不能动私心。\n因为那一夜，她夏子心的人生，发生巨大的逆转……\n四年后，这场华丽的豪门夜宴，那个穿梭在会场里，引起所有人注意的女人叫珍妮，今天她成为了主角，让人神魂颠倒。\n她告诉自己早已经不是当年那个单纯无知的夏子心。";
    NSArray * strArr = [str componentsSeparatedByString:@"\n"];
    NSMutableAttributedString * mutStr = [[NSMutableAttributedString alloc]initWithString:str];
    
    [mutStr addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0,[[strArr objectAtIndex:0] length]+1)];
    
    [mutStr addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange([[strArr objectAtIndex:0] length],[[strArr objectAtIndex:1] length]+1)];
    
    [mutStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange([[strArr objectAtIndex:1] length], [[strArr objectAtIndex:2] length]+1)];
    
     [mutStr addAttribute:NSForegroundColorAttributeName value:[UIColor brownColor] range:NSMakeRange([[strArr objectAtIndex:2] length], [[strArr objectAtIndex:3] length]+1)];
    [mutStr addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:NSMakeRange([[strArr objectAtIndex:3] length], [[strArr objectAtIndex:4] length]+1)];

    self.label.attributedText = mutStr;

}

-(void)showStepper
{
    CustomStepperView * stepper =[[[NSBundle mainBundle]loadNibNamed:@"CustomStepperView" owner:nil options:nil] objectAtIndex:0];
    //    stepper.backgroundColor = [UIColor whiteColor];
    stepper.frame = CGRectMake(100, 400, 90, 30);
    stepper.tineColor = [UIColor colorWithRed:204/255.0f green:204/255.0f blue:204/255.0f alpha:1.0];
    stepper.miniMum = 0;
    stepper.maxiMum = 20;
    stepper.value = 10;
    stepper.labelColor = [UIColor whiteColor];
    stepper.normalBtnColor = [UIColor whiteColor];
    stepper.disEabledBtnColor = [UIColor colorWithRed:255.0f green:255.0f blue:255.0f alpha:0.5];
    [self.view addSubview:stepper];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
