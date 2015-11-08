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
    self.title = @"科学穿着";
    //self.navigationItem.prompt=@"prompt";
    self.navigationController.navigationBar.tintColor = [UIColor blueColor];
    UIImage* image = [UIImage imageNamed:@"correct.png"];
    //UIImageView* imageview = [[UIImageView alloc] initWithImage:image];
    UIBarButtonItem* button = [[UIBarButtonItem alloc] initWithImage:image landscapeImagePhone:image style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    
    self.navigationItem.leftBarButtonItem = button;
    //------
    webView_ = [[UIWebView alloc] init];
    webView_.delegate = self;
    webView_.frame = self.view.bounds;
    webView_.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    webView_.scalesPageToFit = YES;
    [self.view addSubview:webView_];
    //------工具条中追加活动指示器
    activityIndicatory_ = [[UIActivityIndicatorView alloc] init];
    activityIndicatory_.frame = CGRectMake(0, 0, 20, 20);
    UIBarButtonItem* indicator = [[UIBarButtonItem alloc] initWithCustomView:activityIndicatory_  ];
    UIBarButtonItem* adjustment = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem* refresh = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:nil action:nil];
    UIBarButtonItem* goback = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:nil action:nil];
    NSArray* buttons = [NSArray arrayWithObjects:refresh,adjustment,indicator,adjustment,goback,  nil];
    [self setToolbarItems:buttons animated:YES];
    
}
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://localhost:3000/dress"]];
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
-(void)goBack{
    NSLog(@"goback......");
    [self.navigationController popToRootViewControllerAnimated:NO];
}
@end
