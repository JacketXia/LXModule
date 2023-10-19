//
//  OrientationStaticViewController.m
//  LXModule_Example
//
//  Created by JacketXia on 2023/10/16.
//  Copyright © 2023 xiawenbin. All rights reserved.
//

#import "OrientationModalViewController.h"
#import <Masonry/Masonry.h>
#import <LXModule/LXOrientationControl.h>

@interface OrientationModalViewController ()

@end

@implementation OrientationModalViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        LXOrientationControl.supportOrientation = UIInterfaceOrientationMaskLandscapeRight;
        self.modalPresentationStyle = UIModalPresentationFullScreen;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.redColor;
    
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:18];
    label.text = @"横屏播放视图";
    label.textColor = UIColor.blueColor;
    [self.view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.offset(0);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    LXOrientationControl.supportOrientation = UIInterfaceOrientationMaskPortrait;
    [self dismissViewControllerAnimated:NO completion:nil];
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
