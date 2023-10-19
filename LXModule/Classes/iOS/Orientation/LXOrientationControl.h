//
//  LXOrientationControl.h
//  LXModule
//
//  Created by JacketXia on 2023/10/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LXOrientationControl : NSObject

@property (nonatomic, assign, class, readonly) BOOL canRespond;

/// 设置当前支持方向
@property (nonatomic, assign, class) UIInterfaceOrientationMask supportOrientation;

@end

@interface UIViewController (LXOrientationControl)

/// 旋转到某个方向，当前控制器需要支持这个方向
/// 如果想关闭自动旋转，在调用这个方法之前，把屏幕方向固定 LXOrientationControl.supportOrientation
/// @param interfaceOrientation 方向
/// @return 是否成功
- (BOOL)lx_rotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;

@end

NS_ASSUME_NONNULL_END
