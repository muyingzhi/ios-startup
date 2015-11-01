//
//  ViewController2.m
//  
//
//  Created by muyz on 15/10/11.
//
//

#import <Foundation/Foundation.h>
#import "ViewController2.h"
@implementation ViewController2

-(void)viewDidLoad{
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor whiteColor];
    label.text = @"您好，世界";
    label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:label];
}
-(id)init{
    
    if((self = [super init])){
        self.title =@"您好";
        UIImage*icon = [UIImage imageNamed:@"ba111.png"];
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"你好" image:icon tag:0];
        self.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    }
    return self;
}
@end