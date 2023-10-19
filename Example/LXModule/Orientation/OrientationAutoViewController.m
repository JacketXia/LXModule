//
//  OrientationViewController.m
//  LXModule_Example
//
//  Created by JacketXia on 2023/10/16.
//  Copyright © 2023 xiawenbin. All rights reserved.
//

#import "OrientationAutoViewController.h"
#import <LXOrientationControl.h>
#import <LXModule/LXNavigationChildControllerDelegate.h>
#import <Masonry/Masonry.h>

@interface OrientationAutoViewController ()<LXNavigationChildControllerDelegate>

@property (nonatomic, strong) UIView *playerView;

@end

@implementation OrientationAutoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.playerView = [[UIView alloc] init];
    [self.view addSubview:self.playerView];
    self.playerView.backgroundColor = UIColor.redColor;
    [self.playerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(self.playerView.mas_width).multipliedBy(9/16.0);
        make.left.top.right.offset(0);
    }];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"旋转" forState:UIControlStateNormal];
    button.backgroundColor = UIColor.yellowColor;
    [button addTarget:self action:@selector(onOrientationChange:) forControlEvents:UIControlEventTouchUpInside];
    [self.playerView addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.offset(0);
        make.width.height.offset(50);
    }];
 
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    LXOrientationControl.supportOrientation = UIInterfaceOrientationMaskAllButUpsideDown;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    LXOrientationControl.supportOrientation = UIInterfaceOrientationMaskPortrait;
}

- (void)onOrientationChange:(UIButton *)sender {
    sender.selected = !sender.selected;
    if (sender.selected) {
//        LXOrientationControl.supportOrientation = UIInterfaceOrientationMaskLandscapeRight;
        [self lx_rotateToInterfaceOrientation:UIInterfaceOrientationLandscapeRight];
    }else {
//        LXOrientationControl.supportOrientation = UIInterfaceOrientationMaskPortrait;
        [self lx_rotateToInterfaceOrientation:UIInterfaceOrientationPortrait];
    }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    if (size.width > size.height) {
        self.navigationController.interactivePopGestureRecognizer.enabled = false;
        [self.playerView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.edges.offset(0);
        }];
    }else {
        self.navigationController.interactivePopGestureRecognizer.enabled = true;
        [self.playerView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(self.playerView.mas_width).multipliedBy(9/16.0);
            make.left.top.right.offset(0);
        }];
    }
}

- (BOOL)lx_showNavigationBar {
    return false;
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
