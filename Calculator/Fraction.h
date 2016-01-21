//
//  Fraction.h
//  Calculator
//
//  Created by Rachel Dorn on 1/8/16.
//  Copyright © 2016 Rachel Dorn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject {
    NSInteger numerator;
    NSInteger denominator;
}

@property NSInteger numerator;
@property NSInteger denominator;

- (void)display;
- (void)setNumerator:(NSInteger)num overDenominator:(NSInteger)denom;
- (void)add:(Fraction *)addFraction;
- (void)subtract:(Fraction *)subFraction;
- (void)multiply:(Fraction *)multFraction;
- (void)divide:(Fraction *)divFraction;

@end
