//
//  OrientationHomeViewController.m
//  LXModule_Example
//
//  Created by JacketXia on 2023/10/16.
//  Copyright © 2023 xiawenbin. All rights reserved.
//

#import "OrientationHomeViewController.h"
#import <Masonry/Masonry.h>
#import <LXModule/LXOrientationControl.h>
#import "OrientationAutoViewController.h"
#import "OrientationPushViewController.h"
#import "OrientationModalViewController.h"
#import <LXModule/LXLandscapeWindow.h>
#import "OrientationWindowViewController.h"

@interface OrientationHomeViewController ()

@end

@implementation OrientationHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
}
- (IBAction)onPage1:(id)sender {
    OrientationAutoViewController *vc = [[OrientationAutoViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)onPage2:(id)sender {
    OrientationModalViewController *vc = [[OrientationModalViewController alloc] init];
    [self presentViewController:vc animated:NO completion:nil];
}

- (IBAction)onPush:(id)sender {
    OrientationPushViewController *vc = [[OrientationPushViewController alloc] init];
    [self.navigationController pushViewController:vc animated:NO];
}

- (IBAction)onPage3:(id)sender {
    OrientationWindowViewController *vc = [[OrientationWindowViewController alloc] init];
    [LXLandscapeWindow pushViewController:vc animated:NO];
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
