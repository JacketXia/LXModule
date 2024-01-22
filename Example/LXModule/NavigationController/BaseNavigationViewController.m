//
//  BaseNavigationViewController.m
//  LXNavigationController_Example
//
//  Created by JacketXia on 2023/10/13.
//  Copyright © 2023 xiawenbin. All rights reserved.
//

#import "BaseNavigationViewController.h"

@interface BaseNavigationViewController ()

@end

@implementation BaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lx_globalBackItem = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(onBack)];
    self.navigationBar.translucent = false;
    self.navigationBar.backgroundColor = UIColor.whiteColor;
}

- (void)onBack {
    if (self.viewControllers.count > 1) {
        [self popViewControllerAnimated:YES];
    }else {
        [self dismissViewControllerAnimated:YES completion:nil];
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
