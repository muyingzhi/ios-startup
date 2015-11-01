//
//  ViewController.m
//  NavigationBar
//
//  Created by muyz on 15/10/12.
//  Copyright (c) 2015年 muyz. All rights reserved.
//

#import "LoginViewController.h"


@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"view did load");
    // Do any additional setup after loading the view, typically from a nib.
    //CGRect bounds = CGRectMake(0, 100, self.view.bounds.size.width, 60);
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.text = @"Hello World";
    label.textAlignment = NSTextAlignmentCenter;
    label.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    label.backgroundColor = [UIColor whiteColor];
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"登录"
            forState:UIControlStateNormal];
    [button sizeToFit];
    CGPoint newPoint = self.view.center;
    newPoint.y += 50;
    button.center = newPoint;
    button.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    [button addTarget:self action:@selector(buttonDidPush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)buttonDidPush{
    [self.view.window sendSubviewToBack:self.view];
    
}
@end
