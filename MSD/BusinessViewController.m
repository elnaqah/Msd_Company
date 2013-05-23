//
//  HistoryViewController.m
//  MSD
//
//  Created by AhmedElnaqah on 5/23/13.
//  Copyright (c) 2013 elnaqah. All rights reserved.
//

#import "BusinessViewController.h"

@interface BusinessViewController ()
@property (strong) UIImageView * content1;
@property (strong) UIImageView * content2;
@property (strong) UIImageView * content3;
@end

@implementation BusinessViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark actions
- (IBAction)btnPressed:(id)sender {
    UIButton * btn=(UIButton *)sender;
    //replace background
    UIImageView * replacmentBack=[[UIImageView alloc] initWithFrame:self.backGround.frame];
    replacmentBack.image=[UIImage imageNamed:[NSString stringWithFormat:@"Sub Title %d Back.png",btn.tag] ];
    replacmentBack.alpha=0;
    [self.view insertSubview:replacmentBack belowSubview:self.backGround];
    //replace ball
    NSString * ballStr=[NSString stringWithFormat:@"ball %d.png",btn.tag];
    UIImageView * ball1Replace=[[UIImageView alloc] initWithFrame:self.ball1.frame];
    UIImageView * ball2Replace=[[UIImageView alloc] initWithFrame:self.ball2.frame];
    ball1Replace.image=[UIImage imageNamed:ballStr];
    ball2Replace.image=[UIImage imageNamed:ballStr];
    ball1Replace.alpha=0;
    ball2Replace.alpha=0;
    [self.view insertSubview:ball1Replace belowSubview:self.ball1];
    [self.view insertSubview:ball2Replace belowSubview:self.ball2];
    
    [UIView animateWithDuration:1 animations:^{
        self.content1.alpha=0;
        
    } completion:^(BOOL finished) {
            
    
    
        UIImage * contentImage=[UIImage imageNamed:[NSString stringWithFormat:@"Sub Title %d text.png",btn.tag]];
    
    self.content1=[[UIImageView alloc] initWithFrame:CGRectMake(20, btn.frame.origin.y+btn.frame.size.height-btn.transform.ty, contentImage.size.width, contentImage.size.height)];
    self.content1.image=contentImage;
    contentImage=nil;
    [self.view addSubview:self.content1];
    self.content1.alpha=0;
    
    //animation
    
    switch (btn.tag) {
        case 1:
        {
            CGAffineTransform transform=CGAffineTransformMakeTranslation(0.0, self.content1.bounds.size.height);
            [UIView animateWithDuration:2 animations:^{
                self.btn2.transform=transform;
                self.btn3.transform=transform;
                replacmentBack.alpha=1;
                ball1Replace.alpha=1;
                ball2Replace.alpha=1;
                self.backGround.alpha=0;
                self.ball1.alpha=0;
                self.ball2.alpha=0;
            } completion:^(BOOL finished) {
                [self.backGround removeFromSuperview];
                [self.ball1 removeFromSuperview];
                [self.ball2 removeFromSuperview];
                
                self.backGround=replacmentBack;
                self.ball1=ball1Replace;
                self.ball2=ball2Replace;

                [UIView animateWithDuration:0.5 animations:^{
                    self.content1.alpha=1;
                }];
            }];
        }
            break;
            
        case 2:
        {
            CGAffineTransform transform=CGAffineTransformMakeTranslation(0.0, self.content1.bounds.size.height);
            [UIView animateWithDuration:2 animations:^{
                self.btn2.transform=CGAffineTransformIdentity;
                self.btn3.transform=transform;
                replacmentBack.alpha=1;
                ball1Replace.alpha=1;
                ball2Replace.alpha=1;
                self.backGround.alpha=0;
                self.ball1.alpha=0;
                self.ball2.alpha=0;
            } completion:^(BOOL finished) {
                [self.backGround removeFromSuperview];
                [self.ball1 removeFromSuperview];
                [self.ball2 removeFromSuperview];
                
                self.backGround=replacmentBack;
                self.ball1=ball1Replace;
                self.ball2=ball2Replace;

                [UIView animateWithDuration:0.5 animations:^{
                    self.content1.alpha=1;
                }];
            }];

        }
            break;
        case 3:
        {
            [UIView animateWithDuration:2 animations:^{
                self.btn2.transform=CGAffineTransformIdentity;
                self.btn3.transform=CGAffineTransformIdentity;
                replacmentBack.alpha=1;
                ball1Replace.alpha=1;
                ball2Replace.alpha=1;
                self.backGround.alpha=0;
                self.ball1.alpha=0;
                self.ball2.alpha=0;
            } completion:^(BOOL finished) {
                [self.backGround removeFromSuperview];
                [self.ball1 removeFromSuperview];
                [self.ball2 removeFromSuperview];
                
                self.backGround=replacmentBack;
                self.ball1=ball1Replace;
                self.ball2=ball2Replace;

                [UIView animateWithDuration:0.5 animations:^{
                    self.content1.alpha=1;
                }];
            }];
        }
            break;
    }
    }];
}


@end
