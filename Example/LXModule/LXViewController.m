//
//  LXViewController.m
//  LXModule
//
//  Created by xiawenbin on 10/13/2023.
//  Copyright (c) 2023 xiawenbin. All rights reserved.
//

#import "LXViewController.h"

@interface LXViewController ()

@end

@implementation LXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onNavigationController:(UIButton *)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"NavigationController"];
    
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)onOrientation:(UIButton *)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];

    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"Orientation"];
    vc.modalPresentationStyle = 0;

    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
