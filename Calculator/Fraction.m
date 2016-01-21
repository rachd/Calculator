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
    [self reduce];
}

- (void)subtract:(Fraction *)subFraction {
    self.numerator = self.numerator * subFraction.denominator - self.denominator * subFraction.numerator;
    self.denominator = self.denominator * subFraction.denominator;
    [self reduce];
}

- (void)multiply:(Fraction *)multFraction {
    self.numerator = self.numerator * multFraction.numerator;
    self.denominator = self.denominator * multFraction.denominator;
    [self reduce];
}

- (void)divide:(Fraction *)divFraction {
    self.numerator = self.numerator * divFraction.denominator;
    self.denominator = self.denominator * divFraction.numerator;
    [self reduce];
}

- (void)reduce {
    int u = self.numerator;
    int v = self.denominator;
    int temp = 0;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    self.numerator /= u;
    self.denominator /= u;
}

@end
