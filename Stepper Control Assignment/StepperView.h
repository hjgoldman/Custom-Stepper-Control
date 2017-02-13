//
//  StepperView.h
//  Stepper Control Assignment
//
//  Created by Hayden Goldman on 2/9/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StepperViewDelegate<NSObject>

-(void) stepperViewValue:(int) stepperValue;

@end

IB_DESIGNABLE

@interface StepperView : UIView

@property (nonatomic,assign) IBInspectable float cornerRadius;
@property (nonatomic,copy) IBInspectable NSString *minusText;
@property (nonatomic,copy) IBInspectable NSString *plusText;


@property (nonatomic,strong) UIView *stepperView;
@property (nonatomic,strong) UILabel *stepperLabel;
@property (nonatomic,strong) UIButton *minusButton;
@property (nonatomic,strong) UIButton *plusButton;

@property (nonatomic, assign) int i;

@property (nonatomic,weak) id<StepperViewDelegate> delegate;


@end
