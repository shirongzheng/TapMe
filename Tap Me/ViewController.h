//
//  ViewController.h
//  Tap Me
//
//  Created by Shirong Zheng on 16/8/31.
//  Copyright © 2016年 Shirong Zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
IBOutlet UILabel *scoreLabel;
IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}
-(IBAction)buttonPressed;
    
    
@end

