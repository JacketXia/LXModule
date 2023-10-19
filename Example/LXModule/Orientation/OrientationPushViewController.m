//
//  OrientationPushViewController.m
//  LXModule_Example
//
//  Created by JacketXia on 2023/10/18.
//  Copyright © 2023 xiawenbin. All rights reserved.
//

#import "OrientationPushViewController.h"
#import <LXModule/LXOrientationControl.h>

@interface OrientationPushViewController ()

@end

@implementation OrientationPushViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        LXOrientationControl.supportOrientation = UIInterfaceOrientationMaskLandscapeRight;
    }
    return self;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    LXOrientationControl.supportOrientation = UIInterfaceOrientationMaskPortrait;
}

- (BOOL)lx_enablePopGesture {
    return false;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.yellowColor;
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    if ([touch locationInView:self.view].x > 200) {
        [self.navigationController popViewControllerAnimated:NO];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
