//
//  LXNavigationChildControllerDelegate.h
//  LXNavigationController
//
//  Created by JacketXia on 2023/10/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LXNavigationChildControllerDelegate <NSObject>

@optional

/// 是否显示导航条
/// 默认显示
- (BOOL)lx_showNavigationBar;

/// 是否开启返回手势
/// 默认开启
- (BOOL)lx_enablePopGesture;

/// 自定义返回按钮
- (UIBarButtonItem *)lx_backBarButtonItem;

@end

NS_ASSUME_NONNULL_END
