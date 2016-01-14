//
//  main.m
//  Threelow
//
//  Created by Thiago Heitling on 2016-01-13.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        InputCollector *inputCollector = [[InputCollector alloc] init];
        GameController *gameController = [[GameController alloc] initWithDiceNumber:5];
        
        BOOL userPlaying = YES;
        
        while (userPlaying) {
            
            NSString *input = [inputCollector inputForPrompt:@"roll, hold, reset or quit"];
            
            if ([input isEqualToString:@"roll\n"]) {
                
                [gameController rollDice];
                
            }
            
            else if ([input isEqualToString:@"quit\n"]) {
                
                userPlaying = NO;
                
            }
            
            else if ([input isEqualToString:@"hold\n"]) {
                
                NSString *inputHeldDice = [inputCollector inputForPrompt:@"Which dice index do you want to hold? "];
                int index = [inputHeldDice intValue];
                
                [gameController holdDiceAtIndex:index];
                
            }
            
            else if ([input isEqualToString:@"reset\n"]) {
                
                [gameController resetAllHeldDices];
                
            }
            
        }
        
        
        
        return 0;
    }
}
