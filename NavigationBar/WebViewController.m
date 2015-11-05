//
//  WebViewController.m
//  
//
//  Created by muyz on 15/10/20.
//
//

#import "WebViewController.h"


@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"明确显示通信状态";
    webView_ = [[UIWebView alloc] init];
    webView_.delegate = self;
    webView_.frame = self.view.bounds;
    webView_.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    webView_.scalesPageToFit = YES;
    [self.view addSubview:webView_];
    //工具条中追加活动指示器
    activityIndicatory_ = [[UIActivityIndicatorView alloc] init];
    activityIndicatory_.frame = CGRectMake(0, 0, 20, 20);
    UIBarButtonItem* indicator = [[UIBarButtonItem alloc] initWithCustomView:activityIndicatory_  ];
    UIBarButtonItem* adjustment = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    NSArray* buttons = [NSArray arrayWithObjects:adjustment,indicator,adjustment,  nil];
    [self setToolbarItems:buttons animated:YES];
    
}
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://bing.com"]];
    [webView_ loadRequest:request];
}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    [activityIndicatory_ startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [activityIndicatory_ stopAnimating];
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    [activityIndicatory_ stopAnimating];
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
- (void)kick:(NSString *)url{
    
}
@end
