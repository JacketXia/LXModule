//
//  OrientationWindowViewController.m
//  LXModule_Example
//
//  Created by JacketXia on 2023/10/18.
//  Copyright © 2023 xiawenbin. All rights reserved.
//

#import "OrientationWindowViewController.h"
#import <Masonry/Masonry.h>
#import <LXModule/LXLandscapeWindow.h>
#import <LXModule/LXOrientationControl.h>

@interface OrientationWindowViewController ()

@end

@implementation OrientationWindowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.blueColor;
    
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:18];
    label.text = @"横屏播放视图";
    label.textColor = UIColor.yellowColor;
    [self.view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.offset(0);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [LXLandscapeWindow popViewController:self animated:YES];    
}

- (void)dealloc {
    
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
