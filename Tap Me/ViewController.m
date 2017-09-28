//
//  ViewController.m
//  Tap Me
//
//  Created by Shirong Zheng on 16/8/31.
//  Copyright © 2016年 Shirong Zheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)buttonPressed {
    //scoreLabel.text=@"我被点了
    count++;
    scoreLabel.text= [NSString stringWithFormat: @"Score: %i", count];
    
}

-(void)setupGame{
    seconds=10;
    count=0;
    
    timerLabel.text=[NSString stringWithFormat:@"Count：%i", seconds];
    scoreLabel.text=[NSString stringWithFormat:@"Score：%i", count];
    
    timer=[NSTimer scheduledTimerWithTimeInterval:1.0f
                                           target:self
                                         selector:@selector(subtractTime)
                                         userInfo:nil
                                          repeats:YES];
}

-(void)subtractTime{
    seconds--;
    timerLabel.text =[NSString stringWithFormat:@"Count：%i", seconds];
    
    if(seconds==0){
        [timer invalidate];
        
        UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"Time's Up!"
                                                    message:[NSString stringWithFormat:@"Your Score: %i", count]
                                                     delegate:self
                                            cancelButtonTitle:@"Play Again"
                                            otherButtonTitles:nil];
        [alert show];
                             
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
