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
    int number;
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
-(IBAction)kierubutton:(UIButton *)button
{
    int tapNum = [button.titleLabel.text intValue];
    if(tapNum ==  num+ 1){
        num = tapNum;
        button.hidden=YES;
    }
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

-(void)clear{
    self.nextLabel.hidden=NO;
    self.nextLabel.text=@"次の問題へGO!";
//    self.level1Image.alpha=0.0f;
}

-(void)miss{
    self.nextLabel.hidden=NO;
    self.nextLabel.text=@"残念!メガネが必要だよ！";
//    self.level1Image.alpha=1.0f;
}
-(IBAction)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
