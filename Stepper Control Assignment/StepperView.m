//
//  StepperView.m
//  Stepper Control Assignment
//
//  Created by Hayden Goldman on 2/9/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView



-(instancetype) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    self.stepperView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 75)];
    //self.stepperView = [[UIView alloc]initWithFrame:frame];
    self.stepperView.backgroundColor = [UIColor lightGrayColor];
    self.stepperView.center = self.center;
    
    [self addSubview:self.stepperView];
    
    self.stepperLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.stepperLabel.text = [NSString stringWithFormat:@"%d", self.i];
    self.stepperLabel.textAlignment = NSTextAlignmentCenter;
    self.stepperLabel.backgroundColor = [UIColor whiteColor];
    self.stepperLabel.center = CGPointMake(self.stepperView.frame.size.width/2, self.stepperView.frame.size.height/2);
    
    [self.stepperView addSubview:self.stepperLabel];
    
    self.minusButton = [[UIButton alloc]init];
    self.minusButton.frame = CGRectMake(0, 0, 75, 75);
    self.minusButton.backgroundColor =[UIColor grayColor];
    self.minusButton.center = CGPointMake(37.5, self.stepperView.frame.size.height/2);
    [self.minusButton setTitle:@"-" forState:UIControlStateNormal];
    [self.minusButton addTarget:self action:@selector(minusButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [self.stepperView addSubview:self.minusButton];
    
    self.plusButton = [[UIButton alloc]init];
    self.plusButton.frame = CGRectMake(0, 0, 75, 75);
    self.plusButton.backgroundColor =[UIColor grayColor];
    self.plusButton.center = CGPointMake(262.5, self.stepperView.frame.size.height/2);
    [self.plusButton setTitle:@"+" forState:UIControlStateNormal];
    [self.plusButton addTarget:self action:@selector(plusButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [self.stepperView addSubview:self.plusButton];
    
    return self;

}


-(void) minusButtonPressed{
    
    self.i--;
    self.stepperLabel.text = [NSString stringWithFormat:@"%d", self.i];
    
}

-(void) plusButtonPressed{
    
    self.i++;
    self.stepperLabel.text = [NSString stringWithFormat:@"%d", self.i];

}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
