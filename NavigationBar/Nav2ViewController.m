//
//  Nav2ViewController.m
//  
//
//  Created by muyz on 15/10/20.
//
//

#import "Nav2ViewController.h"

@interface Nav2ViewController ()

@end

@implementation Nav2ViewController

- (void)viewDidLoad {
    NSLog(@"nav2 did load");
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"nav2 title";
    
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor whiteColor];
    label.text = @"您好，世界:Nav2";
    label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
