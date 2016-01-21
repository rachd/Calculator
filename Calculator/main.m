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
    
    Fraction *myFraction = [[Fraction alloc]init];
    
    [myFraction setNumerator:2 overDenominator:5];
    NSLog(@"myFraction has a value of: ");
    [myFraction display];
    
    return 0;
}