//
//  ViewController.h
//  Check_your_eyes
//
//  Created by yuuki on 2014/07/16.
//  Copyright (c) 2014年 yuuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
{
    int number;//方向を区別するための数字
    int num;
}


@property (strong, nonatomic) IBOutlet UILabel *nextLabel;
@property (strong, nonatomic) IBOutlet UIImageView *level1Image;



-(IBAction)up;
-(IBAction)left;
-(IBAction)right;
-(IBAction)down;
-(IBAction)back;
-(IBAction)button:(UIButton *)button;
@end
