//
//  ViewController.m
//  JXTransition
//
//  Created by yuezuo on 16/5/6.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // 转场代码
    NSArray * imageArray = @[@"APPLE0",@"APPLE1",@"APPLE2",@"APPLE3",@"APPLE4",@"APPLE5",@"APPLE6",@"APPLE7",@"APPLE8"];
    NSInteger index = arc4random_uniform(9) ;
    UIImage * image = [UIImage imageNamed:imageArray[index]];
    self.imageV.image = image;
    
    // 转场动画  （转场代码必须跟转场动画在一起）
    // 添加转场动画
    CATransition * transition = [CATransition animation];
    
    
    /**
     *  fade                 : 交叉淡化过渡
     *  push                 : 新视图把旧视图推出去
     *  moveIn               : 新视图移到旧视图上面
     *  reveal               : 将旧视图移开,显示下面的新视图
     *  cube                 : 立方体翻滚效果
     *  oglFlip              : 上下左右翻转效果
     *  suckEffect           : 收缩效果，如一块布被抽走
     *  rippleEffect         : 水滴效果
     *  pageCurl             : 向上翻页效果
     *  pageUnCurl           : 向下翻页效果
     *  cameraIrisHollowOpen : 相机镜头打开效果
     *  cameraIrisHollowClose: 相机镜头关闭效果
     */
    NSArray * tranArray = @[@"fade",@"push",@"reveal",@"moveIn",@"cube",@"oglFlip",@"suckEffect",@"rippleEffect",@"pageCurl",@"pageCurl",@"cameraIrisHollowOpen",@"cameraIrisHollowClose"];
    NSInteger tranIndex = arc4random_uniform(12);
    NSString * type = tranArray[tranIndex];
    
    // suckEffect：相对于父控件进行抽离，可以将需要抽离的图片放置在一个与之同等大小的父控件之上，这样效果更好
    // 设置转场动画
    transition.type = type;
    
    // 添加到控件上
    [self.imageV.layer addAnimation:transition forKey:nil];
    
}

@end
