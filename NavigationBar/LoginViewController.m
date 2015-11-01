//
//  ViewController.m
//  NavigationBar
//
//  Created by muyz on 15/10/12.
//  Copyright (c) 2015年 muyz. All rights reserved.
//

#import "LoginViewController.h"
#import "TopMenuViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "MessageViewController.h"


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
    //----tabbar容器
    mainTabController_ = [[UITabBarController alloc] init];
    
    //----
    ViewController1* tab1 = [[ViewController1 alloc] init];
    ViewController2* tab2 = [[ViewController2 alloc] init];
    //    ViewController3* tab3 = [[ViewController3 alloc] init];
    MessageViewController* tab3 = [[MessageViewController alloc] initWithNibName:@"MessageViewController" bundle:nil];
    //---------4个tab组装到mainTabController
    NSArray* tabs = [NSArray arrayWithObjects:tab1,tab2,tab3, nil];//10.20,最后不是topMenu，而是rootController_
    [mainTabController_ setViewControllers:tabs animated:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)buttonDidPush{
    [self.navigationController pushViewController:mainTabController_
                                          animated:YES];
    
}
@end
