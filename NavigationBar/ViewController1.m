//
//  ViewController1.m
//  
//
//  Created by muyz on 15/10/11.
//
//

#import "ViewController1.h"
@implementation ViewController1

-(void)viewDidLoad{
    [super viewDidLoad];
    
    UILabel* label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.text = @"Hello World";
    label.textColor = [UIColor redColor];
    label.backgroundColor = [UIColor whiteColor];
//    label.textAlignment = UITextAlignmentCenter;
    label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:label];
}
-(id)init{
    if((self = [super init])){
        self.title =@"hello";
        UIImage*icon = [UIImage imageNamed:@"ba111.png"];
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Hello" image:icon tag:0];
    }
    return self;
}
@end