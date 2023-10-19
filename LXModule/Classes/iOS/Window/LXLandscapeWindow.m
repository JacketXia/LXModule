//
//  LXLandscapeWindow.m
//  LXModule
//
//  Created by JacketXia on 2023/10/16.
//

#import "LXLandscapeWindow.h"
#import "LXWindowManager.h"

@implementation LXLandscapeWindow

+ (BOOL)canRespond:(UIWindow *)window {
    return [window isKindOfClass:[LXLandscapeWindow class]];
}

+ (UIInterfaceOrientationMask)supportOrientaion:(UIWindow *)window {
    return UIInterfaceOrientationMaskLandscapeRight;
}

+ (LXLandscapeWindow *)pushViewController:(UIViewController *)rootViewController animated:(BOOL)animated {
    LXLandscapeWindow *window = [[LXLandscapeWindow alloc] init];
    window.rootViewController = rootViewController;
    [[LXWindowManager shared] showWindow:window];
    if (animated) {
        [window show];
    }
    return window;
}

+ (void)popViewController:(UIViewController *)rootViewController animated:(BOOL)animated {
    UIWindow *window = rootViewController.view.window;
    if ([window isKindOfClass:[LXLandscapeWindow class]]) {
        LXLandscapeWindow *tWindow = (LXLandscapeWindow *)window;
        if (animated) {
            [tWindow hidden:^{
                [[LXWindowManager shared] hideWindow:tWindow];
            }];
        }else {
            [[LXWindowManager shared] hideWindow:tWindow];
        }
    }
}

- (void)show {
    self.transform = CGAffineTransformMakeTranslation(0,-self.bounds.size.width);
    [UIView animateWithDuration:0.2 animations:^{
        self.transform = CGAffineTransformIdentity;
    }];
}

- (void)hidden:(void(^)(void))completion {
    [UIView animateWithDuration:0.2 animations:^{
        self.transform = CGAffineTransformMakeTranslation(0,-self.bounds.size.height);
    } completion:^(BOOL finished) {
        completion();
    }];
}

@end

