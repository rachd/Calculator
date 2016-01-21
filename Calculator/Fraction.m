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


- (void)add:(Fraction *)newFraction {
    self.numerator = self.numerator * newFraction.denominator + self.denominator * newFraction.numerator;
    self.denominator = self.denominator * newFraction.denominator;
}

@end
