//
//  ZackZxViewController.h
//  播放器
//
//  Created by YuanCan on 2018/8/8.
//  Copyright © 2018年 zhangxion. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>

@interface ZackZxViewController : AVPlayerViewController

-(instancetype)initWithFram:(CGRect)frame WithUrl:(NSString *)url;

@end
