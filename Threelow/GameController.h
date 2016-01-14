//
//  GameController.h
//  Threelow
//
//  Created by Thiago Heitling on 2016-01-13.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject



@property (nonatomic, strong) NSMutableArray *dices;
@property (nonatomic, strong) NSMutableSet *heldDiceSet;

-(instancetype)initWithDiceNumber:(int)diceNumber;

-(void) rollDice;

-(void) holdDiceAtIndex:(int)indexOfDice;

-(void) resetAllHeldDices;

-(int) currentScore;

-(void) status;

@end
