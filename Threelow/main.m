//
//  main.m
//  Threelow
//
//  Created by Thiago Heitling on 2016-01-13.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Dice *aDice1 = [[Dice alloc] init];
        Dice *aDice2 = [[Dice alloc] init];
        Dice *aDice3 = [[Dice alloc] init];
        Dice *aDice4 = [[Dice alloc] init];
        Dice *aDice5 = [[Dice alloc] init];
        
        NSLog(@"value of Dice1 = %i", aDice1.value);
        NSLog(@"value of Dice2 = %i", aDice2.value);
        NSLog(@"value of Dice3 = %i", aDice3.value);
        NSLog(@"value of Dice4 = %i", aDice4.value);
        NSLog(@"value of Dice5 = %i", aDice5.value);
        
    }
    return 0;
}
