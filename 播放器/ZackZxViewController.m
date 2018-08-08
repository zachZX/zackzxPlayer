//
//  ZackZxViewController.m
//  播放器
//
//  Created by YuanCan on 2018/8/8.
//  Copyright © 2018年 zhangxion. All rights reserved.
//

#import "ZackZxViewController.h"

@interface ZackZxViewController ()<AVPlayerViewControllerDelegate>

@end

@implementation ZackZxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(instancetype)initWithFram:(CGRect)frame WithUrl:(NSString *)url{
    self = [super init];
    if (self) {
        self.player=[AVPlayer playerWithURL:[NSURL URLWithString:url]];
        [self.player play];
        //拉伸模式
        self.videoGravity = AVLayerVideoGravityResizeAspect;
        self.showsPlaybackControls = YES;
        self.delegate = self;
        self.view.bounds = frame;
        self.view.center = CGPointMake(CGRectGetMidX(self.view.bounds), 64 + CGRectGetMidY(self.view.bounds) + 30);
        
    }
    return self;
}

@end
