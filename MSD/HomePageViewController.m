//
//  HomePageViewController.m
//  MSD
//
//  Created by AhmedElnaqah on 5/23/13.
//  Copyright (c) 2013 elnaqah. All rights reserved.
//

#import "HomePageViewController.h"

@interface HomePageViewController ()
@property (strong) UIImageView * titleImageView;
@property (strong) UIImageView * logoImageView;
@end

@implementation HomePageViewController

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

#pragma mark animation 
-(void) entranceAnimation
{
    //529 × 164
    //initializing the title
    UIImage * titleImage=[UIImage imageNamed:@"Text.png"];
    self.titleImageView=[[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width-titleImage.size.width, 210, titleImage.size.width, titleImage.size.height)];
    self.titleImageView.image=titleImage;
    titleImage=nil;
    [self.view addSubview:self.titleImageView];
    self.titleImageView.transform=CGAffineTransformMakeTranslation(self.titleImageView.bounds.size.width, 0.0);
    self.titleImageView.transform=CGAffineTransformScale(self.titleImageView.transform, 1.4, 1.4);
    
    //initializing the logo
    UIImage * logoImage=[UIImage imageNamed:@"Logo MSD.png"];
    self.logoImageView=[[UIImageView alloc] initWithFrame:CGRectMake(30, self.view.bounds.size.height-100, logoImage.size.width, logoImage.size.height)];
    self.logoImageView.image=logoImage;
    logoImage=nil;
    [self.view addSubview:self.logoImageView];
    self.logoImageView.transform=CGAffineTransformMakeTranslation(400, - self.view.bounds.size.height);
    self.logoImageView.transform=CGAffineTransformScale(self.logoImageView.transform, 2,2);
    
    //buttons initializing
    self.aboutUsBtn.transform=CGAffineTransformMakeTranslation(self.aboutUsBtn.bounds.size.width, 0.0);
    self.businessBtn.transform=CGAffineTransformMakeTranslation(self.aboutUsBtn.bounds.size.width, 0.0);
    self.historyBtn.transform=CGAffineTransformMakeTranslation(self.aboutUsBtn.bounds.size.width, 0.0);
    self.visionBtn.transform=CGAffineTransformMakeTranslation(self.aboutUsBtn.bounds.size.width, 0.0);
    self.beliefsBtn.transform=CGAffineTransformMakeTranslation(self.aboutUsBtn.bounds.size.width, 0.0);
    self.missionBtn.transform=CGAffineTransformMakeTranslation(self.aboutUsBtn.bounds.size.width, 0.0);
    //animation
    [UIView animateWithDuration:2 animations:^{
        self.titleImageView.transform=CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:2 animations:^{
            self.logoImageView.transform=CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1 animations:^{
                self.aboutUsBtn.transform=CGAffineTransformIdentity;
            }];
            [UIView animateWithDuration:1.2 animations:^{
                self.businessBtn.transform=CGAffineTransformIdentity;
            }];
            [UIView animateWithDuration:1.4 animations:^{
                self.historyBtn.transform=CGAffineTransformIdentity;
            }];
            [UIView animateWithDuration:1.6 animations:^{
                self.visionBtn.transform=CGAffineTransformIdentity;
            }];
            [UIView animateWithDuration:1.8 animations:^{
                self.beliefsBtn.transform=CGAffineTransformIdentity;
            }];
            [UIView animateWithDuration:2 animations:^{
                self.missionBtn.transform=CGAffineTransformIdentity;
            }];
        }];
        
    }];
    
}


#pragma mark actions
- (IBAction)aboutUs:(id)sender {
}
- (IBAction)business:(id)sender {
}
- (IBAction)history:(id)sender {
}
- (IBAction)vision:(id)sender {
}
- (IBAction)beliefs:(id)sender {
}
- (IBAction)mission:(id)sender {
}

@end
