//
//  playViewController.m
//  播放器
//
//  Created by YuanCan on 2018/8/8.
//  Copyright © 2018年 zhangxion. All rights reserved.
//

#import "playViewController.h"

#import "ZackZxViewController.h"

@interface playViewController (){
    
}
/**  */
@property (nonatomic,strong)ZackZxViewController * playerVC;

@end

@implementation playViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel * lable = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    lable.text = @"111";
    lable.backgroundColor = [UIColor redColor];
    [self.view addSubview:lable];
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
    button.backgroundColor = [UIColor greenColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self addChildViewController:self.playerVC];
    [self.view addSubview:self.playerVC.view];
    
}

-(ZackZxViewController *)playerVC{
    if (!_playerVC) {
        _playerVC = [[ZackZxViewController alloc] initWithFram:CGRectMake(0, 280, 400, 200) WithUrl:@"http://baishi.baidu.com/watch/8120162144103587745.html?fr=ps_ala11&wd=.MP4"];
        
    }
    return _playerVC;
}

-(void)push{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
