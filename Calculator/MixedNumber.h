//
//  MixedNumber.h
//  Calculator
//
//  Created by Rachel Dorn on 1/21/16.
//  Copyright © 2016 Rachel Dorn. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface MixedNumber : Fraction

@property NSInteger wholeNumber;

- (void)setWholeNumber:(NSInteger)number andNumerator:(NSInteger)num overDenominator:(NSInteger)denom;
- (void)setWholeNumber:(NSInteger)number andFraction:(Fraction *)frac;
- (void)display;
+ (MixedNumber *)addMixedNumber:(MixedNumber *)num1 toMixedNumber:(MixedNumber *)num2;

@end