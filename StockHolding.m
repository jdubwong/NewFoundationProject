//
//  StockHolding.m
//  NewFoundationProject
//
//  Created by James Wong on 8/15/14.
//  Copyright (c) 2014 James Wong. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding
@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float) costInDollars
{return purchaseSharePrice * numberOfShares;}


- (float) valueInDollars
{    return currentSharePrice * numberOfShares;}


/*- (float) portfolioValue:(NSMutableArray*)a;
{
    float totalValueOfPortfolio;
    
    for (StockHolding *d in a)
    {
        totalValueOfPortfolio += [d valueInDollars];
    }
    
    return totalValueOfPortfolio;
}*/

@end
