//
//  WebViewController.h
//  
//
//  Created by muyz on 15/10/20.
//
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate>{
    @private UIWebView* webView_;
    UIActivityIndicatorView* activityIndicatory_;
}

@end
