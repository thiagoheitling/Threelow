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
        GameController *gameController = [[GameController alloc] init];
        
        BOOL needPlay = YES;
        
        while (needPlay) {
            
            NSString *userInput =[inputCollector inputForPrompt:@"Input << roll >> to play: "];
            
            if([userInput isEqualToString:@"roll\n"]) {
                
                for (Dice *dice in gameController.dices) {
                    [dice roll];
                    NSLog(@"value of dice = %d", dice.value);
                }
                
            }
        
        }
        
        return 0;
    }
}
