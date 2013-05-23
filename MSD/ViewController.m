//
//  ViewController.m
//  MSD
//
//  Created by AhmedElnaqah on 5/23/13.
//  Copyright (c) 2013 elnaqah. All rights reserved.
//

#import "ViewController.h"
#import "HomePageViewController.h"
#import "BusinessViewController.h"
@interface ViewController ()
@property (strong) HomePageViewController * pageOne;
@property (strong) BusinessViewController * pageTwo;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.pageOne=[[HomePageViewController alloc] init];
    self.pageOne.view.frame=self.scrollView.bounds;
    [self.scrollView addSubview:self.pageOne.view];
    
    self.scrollView.pagingEnabled=YES;
    [self.pageOne entranceAnimation];
    
    self.pageTwo=[[BusinessViewController alloc] init];
    CGRect aframe=self.scrollView.bounds;
    aframe.origin.x=self.scrollView.bounds.size.width;
    self.pageTwo.view.frame=aframe;
    [self.scrollView addSubview:self.pageTwo.view];
    self.scrollView.contentSize=CGSizeMake(2*self.scrollView.bounds.size.width, self.scrollView.bounds.size.height);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
