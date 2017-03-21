//
//  ViewController.m
//  bankApp
//
//  Created by wudongliang on 2017/3/20.
//  Copyright © 2017年 com. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"
@interface ViewController ()
@property (weak,nonatomic) NSString *url;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goClick:(id)sender {
   
    WebViewController *wv = [[WebViewController alloc] init];
    wv.url= [_urlTF text];
    [self presentModalViewController:wv animated:false];
}


@end
