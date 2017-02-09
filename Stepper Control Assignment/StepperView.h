//
//  StepperView.h
//  Stepper Control Assignment
//
//  Created by Hayden Goldman on 2/9/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StepperView : UIView

@property (nonatomic,strong) UIView *stepperView;
@property (nonatomic,strong) UILabel *stepperLabel;
@property (nonatomic,strong) UIButton *minusButton;
@property (nonatomic,strong) UIButton *plusButton;

@property (nonatomic, assign) int stepperValue;

@end
