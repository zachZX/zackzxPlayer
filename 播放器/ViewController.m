//
//  ViewController.m
//  播放器
//
//  Created by YuanCan on 2018/8/8.
//  Copyright © 2018年 zhangxion. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "playViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(void)viewWillAppear:(BOOL)animated{
   AppDelegate * dele = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    dele.allowRotation = YES;
}

-(void)viewWillDisappear:(BOOL)animated{
    
    AppDelegate * dele = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    dele.allowRotation = NO;
    [self changeToOrientation:UIDeviceOrientationPortrait];
}

/// 手动切换设备方向
- (void)changeToOrientation:(UIDeviceOrientation)orientation
{
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val = orientation;
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UILabel * lable = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    lable.text = @"111";
    lable.backgroundColor = [UIColor redColor];
    [self.view addSubview:lable];
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
    button.backgroundColor = [UIColor greenColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
}

-(void)push{
    [self presentViewController:[playViewController new] animated:YES completion:^{
        
    }];
}



@end
