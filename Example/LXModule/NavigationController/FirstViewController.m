//
//  FirstViewController.m
//  LXNavigationController_Example
//
//  Created by JacketXia on 2023/10/13.
//  Copyright © 2023 xiawenbin. All rights reserved.
//

#import "FirstViewController.h"
#import "SectionViewController.h"
#import <LXModule/LXNavigationViewController.h>

@interface FirstViewController ()<LXNavigationChildControllerDelegate>

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.blueColor;
    
    self.title = @"一级页";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = self.view.bounds;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(onButton) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)onButton {
//    [self.navigationController replaceViewController:[[SectionViewController alloc] init] animated:YES];
    [self.navigationController pushViewController:[[SectionViewController alloc] init] animated:YES];
}

- (BOOL)lx_showNavigationBar {
    return true;
}

- (BOOL)lx_enablePopGesture {
    return false;
}

- (UIBarButtonItem *)lx_backBarButtonItem {
    return [[UIBarButtonItem alloc] initWithTitle:@"别致的按钮" style:UIBarButtonItemStylePlain target:self action:@selector(onBack)];
}

- (void)onBack {
    [self.navigationController popViewControllerAnimated:YES];
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
