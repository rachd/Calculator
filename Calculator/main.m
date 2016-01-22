//
//  main.m
//  Calculator
//
//  Created by Rachel Dorn on 1/19/16.
//  Copyright © 2016 Rachel Dorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "MixedNumber.h"

int main () {
    
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    [aFraction setNumerator:2 overDenominator:4];
    [bFraction setNumerator:1 overDenominator:3];
    
    NSLog(@"Using class method:");
    Fraction *classAddition = [Fraction addFraction:aFraction toFraction:bFraction];
    [classAddition display];
    
    Fraction *classSubtraction = [Fraction subtractFraction:aFraction toFraction:bFraction];
    [classSubtraction display];
    
    Fraction *classMult = [Fraction multiplyFraction:aFraction toFraction:bFraction];
    [classMult display];
    
    Fraction *classDiv = [Fraction divideFraction:aFraction toFraction:bFraction];
    [classDiv display];
    
    MixedNumber *aMixedNum = [[MixedNumber alloc] init];
    MixedNumber *bMixedNum = [[MixedNumber alloc] init];
    [aMixedNum setWholeNumber:3 andNumerator:2 overDenominator:4];
    [bMixedNum setWholeNumber:4 andFraction:bFraction];
    
    NSLog(@"aMixedNum is"); [aMixedNum display];
    // Uses Fraction's reduce method on the fractional portion of MixedNumber
    NSLog(@"After reducing, aMixedNum is"); [aMixedNum reduce]; [aMixedNum display];
    
    NSLog(@"Addition: ");
    [aMixedNum display]; NSLog(@" + "); [bMixedNum display]; NSLog(@" = ");
    [[MixedNumber addMixedNumber:aMixedNum toMixedNumber:bMixedNum] display];
    return 0;
}