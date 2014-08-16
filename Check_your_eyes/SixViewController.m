//
//  SixViewController.m
//  Check_your_eyes
//
//  Created by yuuki on 2014/08/13.
//  Copyright (c) 2014年 yuuki. All rights reserved.
//

#import "SixViewController.h"

@interface SixViewController (){
    int num;
    int number;
    int ImageView;
}

@end

@implementation SixViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    number=1;
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
//-(IBAction)kierubutton:(UIButton *)button
//{
//    int tapNum = [button.titleLabel.text intValue];
//    if(tapNum ==  num+ 1){
//        num = tapNum;
//        button.hidden=YES;
//    }
//}
-(IBAction)up{
    if(number==3){
        NSLog(@"正解!");
        [self clear];
    }else{
        NSLog(@"スーパー視力だよ！");
        [self miss];
    }
}
-(IBAction)left{
    if(number==4){
        NSLog(@"次の問題へGO!");
        [self clear];
        
    }else{
        NSLog(@"スーパー視力だよ！");
        [self miss];
    }
}
-(IBAction)right{
    if(number==1){
        NSLog(@"次の問題へGO!");
        [self clear];
    }else{
        NSLog(@"スーパー視力だよ！");
        [self miss];
    }
}
-(IBAction)down{
    if(number==2){
        NSLog(@"次の問題へGO!");
        [self clear];
    }else{
        NSLog(@"スーパー視力だよ！");
        [self miss];
    }
}

-(void)clear{
    self.nextLabel.hidden=NO;
    self.nextLabel.text=@"次の問題へGO!";
    self.level5Image.alpha=0.0f;
}

-(void)miss{
    self.nextLabel.hidden=NO;
    self.check_eye_level5.hidden=NO;
    self.nextLabel.text=@"スーパー視力だよ！";
    self.level5Image.alpha=1.0f;
}
-(IBAction)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

