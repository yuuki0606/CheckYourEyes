//
//  SecondViewController.m
//  Check_your_eyes
//
//  Created by yuuki on 2014/08/13.
//  Copyright (c) 2014年 yuuki. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController (){
    int num;
}

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(IBAction)button:(UIButton *)button
{
    int tapNum = [button.titleLabel.text intValue];
    if(tapNum ==  num+ 1){
        num = tapNum;
        button.hidden=YES;
    }}
@end
