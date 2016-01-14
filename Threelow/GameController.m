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

-(instancetype)initWithDiceNumber:(int)diceNumber {
    
    self = [super init];
    if(self) {
        
        _dices = [NSMutableArray array];
        _heldDiceSet = [NSMutableSet set];
        
        for (int i = 0; i < diceNumber; i++) {
            
            Dice *aDice = [[Dice alloc] init];
            
            [_dices addObject:aDice];
        }
        
    }
    return self;
}

- (void)rollDice {
    
    for (int i = 0; i < [self.dices count]; i++) {
        
        Dice *aDice = self.dices[i];
        
        if ([self.heldDiceSet containsObject:aDice]) {
            
            NSLog(@"[dice%d] = %d", i, aDice.value);
        
        }
        else {
            
            [aDice randomize];
            NSLog(@"Dice%d = %d", i, aDice.value);
        }
    }
}

-(void) holdDiceAtIndex:(int)indexOfDice {
    
    Dice *aDice = [self.dices objectAtIndex:indexOfDice];
    
    BOOL isHeld = [self.heldDiceSet containsObject:aDice];
    
    if (!isHeld) {
    
        [self.heldDiceSet addObject:aDice];
    
    }
    
    else {
        
        [self.heldDiceSet removeObject:aDice];
        
    }
}

-(void) resetAllHeldDices {
    
    [self.heldDiceSet removeAllObjects];
    
}

-(int) currentScore {
    
    int score = 0 ;
    
    for (Dice *aDice in self.heldDiceSet) {
        
        if (aDice.value != 3) {
            
            score += aDice.value;
        }
    }
    
    return  score;
}

-(void) status {
    
    
    
}


@end
