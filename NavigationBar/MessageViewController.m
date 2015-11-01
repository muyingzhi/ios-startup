//
//  MessageViewController.m
//  
//
//  Created by muyz on 15/10/25.
//
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"messageboxLoaded";
    self.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)init{
    
    if((self = [super init])){
        self.title =@"您好";
        //UIImage*icon = [UIImage imageNamed:@"ba111.png"];
        //self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"你好" image:icon tag:0];
//        self.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    }
    return self;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)clickBtn:(id)sender {
    NSLog(@"click button");
    self.label.text = @"Hello click";
}
@end
