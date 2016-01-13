//
//  GameController.m
//  Threelow
//
//  Created by Thiago Heitling on 2016-01-13.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (id)init
{
    self = [super init];
    if (self) {
        
        Dice *dice1 = [Dice new];
        Dice *dice2 = [Dice new];
        Dice *dice3 = [Dice new];
        Dice *dice4 = [Dice new];
        Dice *dice5 = [Dice new];
        
        _dices = @[dice1, dice2, dice3, dice4, dice5];
        
        _heldDices = [NSMutableSet set];
    }
    return self;
}

@end
