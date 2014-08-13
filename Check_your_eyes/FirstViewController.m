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
    NSLog(@"viewDidLoad");
    self.nextLabel.hidden=YES;
    [self.level1Image setImage:[UIImage imageNamed:@"check_eye_Level1"]];
    self.level1Image.alpha=0.0f;
    number=1;
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)up{
    if(number==1){
        NSLog(@"正解!");
        [self clear];
    }else{
        NSLog(@"残念!メガネが必要だよ！");
        [self miss];
    }
}
-(void)clear{
    self.nextLabel.hidden=NO;
    self.nextLabel.text=@"次の問題へGO!";
    self.level1Image.alpha=0.0f;
}

-(void)miss{
    self.nextLabel.hidden=NO;
    self.nextLabel.text=@"残念!メガネが必要だよ！";
    self.level1Image.alpha=1.0f;
}
-(IBAction)left{
    if(number==2){
        NSLog(@"次の問題へGO!");
        [self clear];
        
    }else{
        NSLog(@"残念!メガネが必要だよ！");
        [self miss];
    }
}
-(IBAction)right{
    if(number==3){
        NSLog(@"次の問題へGO!");
       [self clear];
    }else{
        NSLog(@"残念!メガネが必要だよ！");
        [self miss];
    }
}
-(IBAction)down{
    if(number==4){
        NSLog(@"次の問題へGO!");
       [self clear];
    }else{
        NSLog(@"残念!メガネが必要だよ！");
        [self miss];
    }
}
-(IBAction)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
