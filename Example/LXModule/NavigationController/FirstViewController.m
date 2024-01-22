//
//  FirstViewController.m
//  LXNavigationController_Example
//
//  Created by JacketXia on 2023/10/13.
//  Copyright © 2023 xiawenbin. All rights reserved.
//

#import "FirstViewController.h"
#import "DetailViewController.h"
#import <LXModule/LXNavigationViewController.h>

@interface FirstViewController ()<LXNavigationChildControllerDelegate>

@end

#if DEBUG
#define BLLog(format, ...) printf("\n%s\n",[[NSString stringWithFormat:(format), ##__VA_ARGS__] UTF8String])

#else
#define BLLog(format, ...)
#endif

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.blueColor;
    
    self.title = @"tab1";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = self.view.bounds;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(onButton) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)onButton {
    [self.navigationController pushViewController:[[DetailViewController alloc] init] animated:YES];
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
