//
//  MixedNumber.m
//  Calculator
//
//  Created by Rachel Dorn on 1/21/16.
//  Copyright © 2016 Rachel Dorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "MixedNumber.h"

@implementation MixedNumber

@synthesize wholeNumber;

- (void)setWholeNumber:(NSInteger)number andNumerator:(NSInteger)num overDenominator:(NSInteger)denom {
    self.wholeNumber = number;
    self.numerator = num;
    self.denominator = denom;
}

- (void)setWholeNumber:(NSInteger)number andFraction:(Fraction *)frac {
    self.wholeNumber = number;
    self.numerator = frac.numerator;
    self.denominator = frac.denominator;
}

- (void)display {
    NSString *numberString = [[NSString alloc] initWithFormat:@"%ld", (long)self.wholeNumber];
    NSString *numeratorString = [[NSString alloc] initWithFormat:@"%ld", (long)self.numerator];
    NSString *denominatorString = [[NSString alloc] initWithFormat:@"%ld", (long)self.denominator];
    NSLog(@"%@+(%@/%@)", numberString, numeratorString, denominatorString);
}

+ (MixedNumber *)addMixedNumber:(MixedNumber *)num1 toMixedNumber:(MixedNumber *)num2 {
    // Store result in "result"
    MixedNumber *result = [[MixedNumber alloc] init];
    result.wholeNumber = num1.wholeNumber + num2.wholeNumber;
    result.numerator = num1.numerator * num2.denominator + num1.denominator * num2.numerator;
    result.denominator = num1.denominator * num2.denominator;
    
    // Reduce
    if (result.numerator > result.denominator) {
        int extra = result.numerator / result.denominator;
        result.wholeNumber += extra;    // Taking advantage of integer division
        result.numerator -= extra * result.denominator;
        
        int u = result.numerator;
        int v = result.denominator;
        int temp = 0;
        
        // Euclid's procedure to find GCD (Greatest Common Denominator)
        // Don't worry about how this works, exactly.
        
        while (v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        
        result.numerator /= u;
        result.denominator /= u;
    }
    
    return result;
}

@end