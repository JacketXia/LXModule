//
//  LXWindowManager.m
//  LXModule
//
//  Created by JacketXia on 2023/10/17.
//

#import "LXWindowManager.h"

@interface LXWindowManager ()

@property (nonatomic, strong) NSMutableArray<UIWindow *> *windows;

@end

@implementation LXWindowManager

+ (instancetype)shared {
    static LXWindowManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[LXWindowManager alloc] init];
    });
    return instance;
}

- (NSMutableArray<UIWindow *> *)windows {
    if (!_windows) {
        _windows = [NSMutableArray array];
    }
    return _windows;
}

- (void)showWindow:(UIWindow *)window {
    window.hidden = false;
    [self.windows addObject:window];
}

- (void)hideWindow:(UIWindow *)window {
    if ([self.windows containsObject:window]) {
        window.hidden = YES;
        [self.windows removeObject:window];
    }
}

@end
