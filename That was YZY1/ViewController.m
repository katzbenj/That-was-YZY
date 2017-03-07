//
//  ViewController.m
//  That was YZY1
//
//  Created by Gregory J Katz on 1/22/17.
//  Copyright © 2017 Gregory J Katz. All rights reserved.
//

#import "ViewController.h"


@import GoogleMobileAds;

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)Button1Sound:(id)sender{
    AudioServicesPlaySystemSound(Button1);
}

- (void)viewDidLoad {
    
    
    
    
    NSURL *Button1Sound = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"sound"
        ofType:@"m4a"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)Button1Sound, & Button1);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.bannerView.adUnitID = @"ca-app-pub-1339414573690313/8907052583";
    self.bannerView.rootViewController = self;
    [self.bannerView loadRequest:[GADRequest request]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
