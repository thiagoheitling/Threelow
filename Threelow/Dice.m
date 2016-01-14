//
//  Dice.m
//  Threelow
//
//  Created by Thiago Heitling on 2016-01-13.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (id)init {
    self = [super init];
    if (self) {
        
        [self randomize];
        
    }
    return self;
}

- (void) randomize {
    _value = arc4random_uniform(6) + 1;
}


@end

