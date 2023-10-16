//
//  UINavigationController+LXNavigationController.m
//  LXNavigationController
//
//  Created by JacketXia on 2023/10/13.
//

#import "UINavigationController+LXNavigationController.h"

@implementation UINavigationController (LXNavigationController)

static NSTimeInterval _lastInterval = 0;
- (void)replaceViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    // 频控
    NSTimeInterval currentInterval = [NSDate date].timeIntervalSince1970;
    if (currentInterval - _lastInterval < 0.5) {
        return;
    }
    _lastInterval = currentInterval;
    
    // 替换最后一个控制器
    NSMutableArray *controllers = [self.viewControllers mutableCopy];
    [controllers replaceObjectAtIndex:controllers.count - 1 withObject:viewController];
    [self setViewControllers:controllers animated:animated];
}



@end
