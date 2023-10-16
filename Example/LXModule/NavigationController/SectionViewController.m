//
//  SectionViewController.m
//  LXNavigationController_Example
//
//  Created by JacketXia on 2023/10/13.
//  Copyright © 2023 xiawenbin. All rights reserved.
//

#import "SectionViewController.h"
#import "FirstViewController.h"
#import <LXModule/LXNavigationViewController.h>

@interface SectionViewController ()<LXNavigationChildControllerDelegate>

@end

@implementation SectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.cyanColor;
    
    self.title = @"二级页";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = self.view.bounds;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(onButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onButton {
    [self.navigationController pushViewController:[[FirstViewController alloc] init] animated:YES];
}

- (BOOL)lx_showNavigationBar {
    return true;
}

- (BOOL)lx_enablePopGesture {
    return true;
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
