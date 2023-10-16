//
//  LXNavigationViewController.m
//  IpadDemo
//
//  Created by JacketXia on 2023/10/11.
//

#import "LXNavigationViewController.h"

@interface LXNavigationViewController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation LXNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    self.interactivePopGestureRecognizer.delegate = self;
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    /// 隐藏底部条
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    /// 自定义返回按钮
    UIBarButtonItem *backItem = self.lx_globalBackItem;
    if ( [viewController respondsToSelector:@selector(lx_backBarButtonItem)]) {
        backItem = [viewController performSelector:@selector(lx_backBarButtonItem)];
    }
    viewController.navigationItem.leftBarButtonItem = backItem;
    
    [super pushViewController:viewController animated:animated];
}

- (void)replaceViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 1) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    /// 自定义返回按钮
    UIBarButtonItem *backItem = self.lx_globalBackItem;
    if ( [viewController respondsToSelector:@selector(lx_backBarButtonItem)]) {
        backItem = [viewController performSelector:@selector(lx_backBarButtonItem)];
    }
    viewController.navigationItem.leftBarButtonItem = backItem;
    
    [super replaceViewController:viewController animated:animated];

}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    /// 导航条显示隐藏
    BOOL showNavigationBar = YES;
    if ([viewController respondsToSelector:@selector(lx_showNavigationBar)]) {
        showNavigationBar = [viewController performSelector:@selector(lx_showNavigationBar)];
    }
    [self setNavigationBarHidden:!showNavigationBar animated:YES];
    

}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    /// 手势返回开启关闭
    BOOL enablePopGesture = YES;
    if ([viewController respondsToSelector:@selector(lx_enablePopGesture)]) {
        enablePopGesture = [viewController performSelector:@selector(lx_enablePopGesture)];
    }
    self.interactivePopGestureRecognizer.enabled = enablePopGesture;
    
}

@end

