//
//  ViewController3.m
//  
//
//  Created by muyz on 15/10/11.
//
//

#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.text = @"view controller 3";
    label.textColor = [UIColor blueColor];
    label.backgroundColor = [UIColor whiteColor];
    label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview: label];
}
-(id)init{
    
    if((self = [super init])){
        self.title =@"view3";
        UIImage*icon = [UIImage imageNamed:@"ba111.png"];
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"View3" image:icon tag:0];
    }
    return self;
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
