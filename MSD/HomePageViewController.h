//
//  HomePageViewController.h
//  MSD
//
//  Created by AhmedElnaqah on 5/23/13.
//  Copyright (c) 2013 elnaqah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomePageViewController : UIViewController
-(void) entranceAnimation;

@property (strong, nonatomic) IBOutlet UIButton *aboutUsBtn;
@property (strong, nonatomic) IBOutlet UIButton *businessBtn;
@property (strong, nonatomic) IBOutlet UIButton *historyBtn;
@property (strong, nonatomic) IBOutlet UIButton *visionBtn;
@property (strong, nonatomic) IBOutlet UIButton *beliefsBtn;
@property (strong, nonatomic) IBOutlet UIButton *missionBtn;

@end
