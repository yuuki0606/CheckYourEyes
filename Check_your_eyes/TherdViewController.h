//
//  TherdViewController.h
//  Check_your_eyes
//
//  Created by yuuki on 2014/08/14.
//  Copyright (c) 2014年 yuuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TherdViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *level2Image;
@property (strong, nonatomic) IBOutlet UILabel *nextLabel;
-(IBAction)up;
-(IBAction)left;
-(IBAction)right;
-(IBAction)down;
-(IBAction)back;

@end
