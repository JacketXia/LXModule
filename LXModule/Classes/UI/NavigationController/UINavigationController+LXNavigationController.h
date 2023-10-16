//
//  UINavigationController+LXNavigationController.h
//  LXNavigationController
//
//  Created by JacketXia on 2023/10/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (LXNavigationController)

- (void)replaceViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
