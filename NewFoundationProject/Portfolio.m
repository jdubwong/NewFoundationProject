//
//  Portfolio.m
//  NewFoundationProject
//
//  Created by James Wong on 8/19/14.
//  Copyright (c) 2014 James Wong. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

@synthesize totalValue;

- (void)addToPortfolio:(StockHolding *)a

{
    if (!portfolio)
    {
        portfolio = [[NSMutableArray alloc] init];
    }
    [portfolio addObject:a];
}


- (float)returnTotal
{
    
    float num = 0.0;
    for (StockHolding *x in portfolio)
    {
        num += [x valueInDollars];
    }
    return num;
}
    
@end
