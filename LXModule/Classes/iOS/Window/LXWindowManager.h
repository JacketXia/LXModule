//
//  LXWindowManager.h
//  LXModule
//
//  Created by JacketXia on 2023/10/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LXWindowManager : NSObject

+ (instancetype)shared;

- (void)showWindow:(UIWindow *)window;

- (void)hideWindow:(UIWindow *)window;

@end

NS_ASSUME_NONNULL_END
