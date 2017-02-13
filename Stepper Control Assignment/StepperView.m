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
        
   // self = [super initWithFrame:frame];
     self = [super initWithFrame:CGRectMake(0, 0, 300, 50)];
    
    self.stepperView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 50)];
   // self.stepperView = [[UIView alloc]initWithFrame:frame];
    self.stepperView.backgroundColor = [UIColor colorWithRed:0.5765f
                                                       green:0.8000f
                                                        blue:0.8667f
                                                       alpha:1.0f];
    self.stepperView.center = self.center;
    
    [self addSubview:self.stepperView];
    
    self.stepperLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    self.stepperLabel.text = [NSString stringWithFormat:@"%d", self.i];
    self.stepperLabel.textAlignment = NSTextAlignmentCenter;
    [self.stepperLabel setFont:[UIFont boldSystemFontOfSize:30]];
    self.stepperLabel.textColor = [UIColor whiteColor];
    self.stepperLabel.center = CGPointMake(self.stepperView.frame.size.width/2, self.stepperView.frame.size.height/2);
    
    [self.stepperView addSubview:self.stepperLabel];
    
    self.minusButton = [[UIButton alloc]init];
    self.minusButton.frame = CGRectMake(0, 0, 100, 50);
    self.minusButton.backgroundColor =[UIColor colorWithRed:0.9961f
                                                      green:0.8000f
                                                       blue:0.7961f
                                                      alpha:1.0f];
    self.minusButton.titleLabel.font = [UIFont systemFontOfSize:30];
    self.minusButton.center = CGPointMake(50, self.stepperView.frame.size.height/2);
    [self.minusButton setTitle:@"-" forState:UIControlStateNormal];
    [self.minusButton addTarget:self action:@selector(minusButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [self.stepperView addSubview:self.minusButton];
    
    self.plusButton = [[UIButton alloc]init];
    self.plusButton.frame = CGRectMake(0, 0, 100, 50);
    self.plusButton.backgroundColor =[UIColor colorWithRed:0.9961f
                                                     green:0.8000f
                                                      blue:0.7961f
                                                     alpha:1.0f];
    self.plusButton.titleLabel.font = [UIFont systemFontOfSize:30];
    self.plusButton.center = CGPointMake(250, self.stepperView.frame.size.height/2);
    [self.plusButton setTitle:@"+" forState:UIControlStateNormal];
    [self.plusButton addTarget:self action:@selector(plusButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [self.stepperView addSubview:self.plusButton];
    
    return self;

}


-(void) minusButtonPressed{
    
    self.i--;
    self.stepperLabel.text = [NSString stringWithFormat:@"%d", self.i];
    [self.delegate stepperViewValue:self.i];
    
}

-(void) plusButtonPressed{
    
    self.i++;
    self.stepperLabel.text = [NSString stringWithFormat:@"%d", self.i];
    [self.delegate stepperViewValue:self.i];
}



- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    if (self.minusText == nil){
        [self.minusText isEqualToString:@"-"];
    } else {
        self.minusButton.titleLabel.text = self.minusText;
    };
    
    if (self.plusText == nil){
        [self.plusText isEqualToString:@"+"];
    } else {
        self.plusButton.titleLabel.text = self.plusText;
    };

    self.layer.cornerRadius = self.cornerRadius;
    self.layer.masksToBounds = YES;
    
}


@end
