//
//  LXNavigationViewController.h
//  IpadDemo
//
//  Created by JacketXia on 2023/10/11.
//

#import <UIKit/UIKit.h>
#import "LXNavigationChildControllerDelegate.h"
#import "UINavigationController+LXNavigationController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LXNavigationViewController : UINavigationController

/// 全局返回按钮
@property (nonatomic, strong) UIBarButtonItem *lx_globalBackItem;

/// 导航栏背景色
@property (nonatomic, strong) UIColor *navigationBarBackgroudColor;

@end

NS_ASSUME_NONNULL_END
