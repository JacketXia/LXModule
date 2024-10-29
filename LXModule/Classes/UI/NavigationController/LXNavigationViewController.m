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

- (void)setNavigationBarBackgroudColor:(UIColor *)navigationBarBackgroudColor {
    _navigationBarBackgroudColor = navigationBarBackgroudColor;
    if (@available(iOS 15.0, *)) {
        UINavigationBarAppearance *apperance = [[UINavigationBarAppearance alloc] init];
        apperance.backgroundColor = navigationBarBackgroudColor;
        self.navigationBar.standardAppearance = apperance;
        self.navigationBar.scrollEdgeAppearance = apperance;
    } else {
        self.navigationBar.barTintColor = navigationBarBackgroudColor;
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    /// 隐藏底部条
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    /// 导航条显示隐藏
    BOOL showNavigationBar = YES;
    if ([viewController respondsToSelector:@selector(lx_showNavigationBar)]) {
        showNavigationBar = [viewController performSelector:@selector(lx_showNavigationBar)];
    }
    [self setNavigationBarHidden:!showNavigationBar animated:YES];
    
    /// 设置全局返回按钮
    BOOL isRootVC = viewController == navigationController.viewControllers.firstObject;
    BOOL hasSetLeftItem = viewController.navigationItem.leftBarButtonItem != nil;
    if (!isRootVC && !hasSetLeftItem) {
        /// 自定义返回按钮
        if ( [viewController respondsToSelector:@selector(lx_backBarButtonItem)]) {
            viewController.navigationItem.leftBarButtonItem = [viewController performSelector:@selector(lx_backBarButtonItem)];
        }else if (nil != self.lx_globalBackItem){
            viewController.navigationItem.leftBarButtonItem = self.lx_globalBackItem;
        }
    }
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

