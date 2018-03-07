//
//  ViewController.m
//  IntegrationObjC
//
//  Created by VuNguyenIT on 2/28/18.
//

#import "ViewController.h"
#import <React/RCTRootView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSLog(@"navigate RN Button Pressed");
//    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
//    
//    RCTRootView *rootView =
//    [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
//                                moduleName: @"IntegrationRNObjC"
//                         initialProperties:nil
//                             launchOptions: nil];
//    UIViewController *vc = [[UIViewController alloc] init];
//    vc.view = rootView;
//    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)navigateToRNPress:(UIButton *)sender {
    NSLog(@"navigate RN Button Pressed");
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(backToNative) name:@"dismissViewController" object:nil];
    
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    
    RCTRootView *rootView =
    [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                                moduleName: @"IntegrationRNObjC"
                         initialProperties:nil
                             launchOptions: nil];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)backToNative {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
