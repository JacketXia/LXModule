//
//  DetailViewController.m
//  LXModule_Example
//
//  Created by Jacket on 2024/1/22.
//  Copyright © 2024 xiawenbin. All rights reserved.
//

#import "DetailViewController.h"
#import <LXModule/LXNavigationViewController.h>
#import <Masonry/Masonry.h>

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = UIColor.redColor;
    [self.view addSubview:redView];
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(0);
        make.left.right.offset(0);
        make.height.offset(100);
    }];
}

- (BOOL)lx_showNavigationBar {
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
