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
        _value = arc4random() %6 + 1;
    }
    return self;
}
@end

