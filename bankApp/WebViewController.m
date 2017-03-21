//
//  WebViewController.m
//  bankApp
//
//  Created by wudongliang on 2017/3/20.
//  Copyright © 2017年 com. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIWebView *bankWV = [[UIWebView alloc] init];
    bankWV.frame = self.view.bounds;
    bankWV.delegate = self;
    [self.view addSubview:bankWV];
    NSLog(@"%@", _url);
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:_url]];
    [bankWV loadRequest:request];
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];//设置进度条开始
    NSLog(@"Loading webViewDidStartLoad method");
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];//设置进度条结束
    NSLog(@"Loading webViewDidFinishLoad method");
}
//加载失败的时候，如：网络异常
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
    NSLog(@"Loading webView method");
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
