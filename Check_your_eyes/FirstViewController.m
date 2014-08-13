//
//  ViewController.m
//  Check_your_eyes
//
//  Created by yuuki on 2014/07/16.
//  Copyright (c) 2014年 yuuki. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	//画面が立ち上がったときに一回だけ呼ばれる
    self.level2.hidden=YES;
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
