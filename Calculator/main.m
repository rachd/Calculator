//
//  main.m
//  Calculator
//
//  Created by Rachel Dorn on 1/19/16.
//  Copyright © 2016 Rachel Dorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

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
    
    return 0;
}