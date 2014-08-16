//
//  ForthViewController.h
//  Check_your_eyes
//
//  Created by yuuki on 2014/08/13.
//  Copyright (c) 2014年 yuuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForthViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *level3vImage;
@property (strong, nonatomic) IBOutlet UILabel *nextLabel;
@property (strong, nonatomic) IBOutlet UIImageView *check_eye_level3;
-(IBAction)up;
-(IBAction)left;
-(IBAction)right;
-(IBAction)down;
-(IBAction)back;
//-(IBAction)kierubutton:(UIButton *)button;
@end
