//
//  ViewController.m
//  Stepper Control Assignment
//
//  Created by Hayden Goldman on 2/9/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    StepperView *stepperView = [[StepperView alloc]initWithFrame:CGRectMake(0, 0, 300, 75)];
    stepperView.center = self.view.center;
    [self.view addSubview:stepperView];
    
}



@end
