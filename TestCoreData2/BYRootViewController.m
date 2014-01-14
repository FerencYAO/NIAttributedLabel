//
//  BYRootViewController.m
//  TestCoreData2
//
//  Created by yao on 14-1-14.
//  Copyright (c) 2014年 BY. All rights reserved.
//

#import "BYRootViewController.h"
#import "BYTextImgView.h"

@interface BYRootViewController ()

@end

@implementation BYRootViewController

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
	// Do any additional setup after loading the view.
    BYTextImgView *textImgView = [[BYTextImgView alloc] initWithFrame:CGRectMake(0.0, 0.0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    
    [self.view addSubview:textImgView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
