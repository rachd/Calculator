//
//  Fraction.m
//  Calculator
//
//  Created by Rachel Dorn on 1/8/16.
//  Copyright © 2016 Rachel Dorn. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;

- (void)display {
    NSString *numeratorString = [[NSString alloc]initWithFormat:@"%ld", (long)self.numerator];
    NSString *denominatorString = [[NSString alloc]initWithFormat:@"%ld", (long)self.denominator];
    NSLog(@"%@/%@", numeratorString, denominatorString);
}

- (void)setNumerator:(NSInteger)num overDenominator:(NSInteger)denom {
    self.numerator = num;
    self.denominator = denom;
}


- (void)add:(Fraction *)addFraction {
    self.numerator = self.numerator * addFraction.denominator + self.denominator * addFraction.numerator;
    self.denominator = self.denominator * addFraction.denominator;
}

- (void)subtract:(Fraction *)subFraction {
    self.numerator = self.numerator * subFraction.denominator - self.denominator * subFraction.numerator;
    self.denominator = self.denominator * subFraction.denominator;
}

- (void)multiply:(Fraction *)multFraction {
    self.numerator = self.numerator * multFraction.numerator;
    self.denominator = self.denominator * multFraction.denominator;
}

- (void)divide:(Fraction *)divFraction {
    self.numerator = self.numerator * divFraction.denominator;
    self.denominator = self.denominator * divFraction.numerator;
}

@end
