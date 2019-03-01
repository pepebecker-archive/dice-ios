//
//  Dice.m
//  Dice
//
//  Created by Pepe Becker on 02/03/2019.
//  Copyright © 2019 Pepe Becker. All rights reserved.
//

#import "Dice.h"

@interface Dice() {
    NSArray<UIImage *> * _images;
}

@end

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _images = @[[UIImage imageNamed:@"dice_1"],
                    [UIImage imageNamed:@"dice_2"],
                    [UIImage imageNamed:@"dice_3"],
                    [UIImage imageNamed:@"dice_4"],
                    [UIImage imageNamed:@"dice_5"],
                    [UIImage imageNamed:@"dice_6"]];
    }
    return self;
}

- (UIImage *)roll {
    uint32_t r = arc4random_uniform((uint32_t)_images.count);
    return [_images objectAtIndex:r];
}

@end
