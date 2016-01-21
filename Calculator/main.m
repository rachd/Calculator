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
    
    [aFraction setNumerator:1 overDenominator:2];
    [bFraction setNumerator:1 overDenominator:3];
    
    [aFraction display];
    NSLog(@" + ");
    [bFraction display];
    NSLog(@" = ");
    [aFraction add:bFraction];
    [aFraction display];
    
    return 0;
}