//
//  LXOrientationControl.m
//  LXModule
//
//  Created by JacketXia on 2023/10/16.
//

#import "LXOrientationControl.h"

@implementation LXOrientationControl

static UIInterfaceOrientationMask _orientation;

+ (BOOL)canRespond {
    return _orientation ? true : false;
}

+ (UIInterfaceOrientationMask)supportOrientation {
    return _orientation;
}

+ (void)setSupportOrientation:(UIInterfaceOrientationMask)supportOrientation {
    _orientation = supportOrientation;
}

@end


@implementation UIViewController (LXOrientationControl)

- (BOOL)lx_rotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    if (@available(iOS 16.0, *)) {
        [self setNeedsUpdateOfSupportedInterfaceOrientations];
        __block BOOL result = YES;
        UIInterfaceOrientationMask mask = 1 << interfaceOrientation;
        UIWindow *window = self.view.window ?: UIApplication.sharedApplication.delegate.window;
        [window.windowScene requestGeometryUpdateWithPreferences:[[UIWindowSceneGeometryPreferencesIOS alloc] initWithInterfaceOrientations:mask] errorHandler:^(NSError * _Nonnull error) {
            if (error) {
                result = NO;
            }
        }];
        return result;
    }else {
        if ([UIDevice currentDevice].orientation == (UIDeviceOrientation)interfaceOrientation) {
            [UIViewController attemptRotationToDeviceOrientation];
            return NO;
        }
        [[UIDevice currentDevice] setValue:@(interfaceOrientation) forKey:@"orientation"];
        return YES;
    }
}

@end
