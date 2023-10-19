//
//  LXLandscapeWindow.h
//  LXModule
//
//  Created by JacketXia on 2023/10/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LXLandscapeWindow : UIWindow

+ (BOOL)canRespond:(UIWindow *)window;

+ (UIInterfaceOrientationMask)supportOrientaion:(UIWindow *)window;

/// 压入一个横屏控制器
+ (LXLandscapeWindow *)pushViewController:(UIViewController *)rootViewController animated:(BOOL)animated;

/// 退出一个横屏控制器
+ (void)popViewController:(UIViewController *)rootViewController animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
