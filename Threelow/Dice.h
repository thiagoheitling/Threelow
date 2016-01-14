//
//  Dice.h
//  Threelow
//
//  Created by Thiago Heitling on 2016-01-13.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) int value;

- (void) randomize;

@end
