//
//  ViewController.m
//  OCProject
//
//  Created by 李礼光 on 2020/12/4.
//
#import "ViewController.h"
#import "AppDelegate.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(100, 100, 200, 50)];
    [button setBackgroundColor:[UIColor lightGrayColor]];
    [button setTitle:@"ClickMePushToFlutterVC" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btn_click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)btn_click {
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] init];
    [self.navigationController pushViewController:flutterViewController animated:YES];
}

@end
