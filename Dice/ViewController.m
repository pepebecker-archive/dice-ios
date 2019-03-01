//
//  ViewController.m
//  Dice
//
//  Created by Pepe Becker on 02/03/2019.
//  Copyright © 2019 Pepe Becker. All rights reserved.
//

#import "ViewController.h"

#import "Dice.h"

@interface ViewController () {
    Dice * _dice;
}

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _dice = [[Dice alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [_diceButton addTarget:self action:@selector(rollDice) forControlEvents:UIControlEventTouchUpInside];
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self rollDice];
    }
}

- (void)rollDice {
    [_diceButton setBackgroundImage:[_dice roll] forState:UIControlStateNormal];
    _diceButton.alpha = 0;
    [UIView animateWithDuration:0.3 animations:^{
        self->_diceButton.alpha = 1;
    }];
}

@end
