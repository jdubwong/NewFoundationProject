//
//  ForeignStockHolding.m
//  NewFoundationProject
//
//  Created by James Wong on 8/18/14.
//  Copyright (c) 2014 James Wong. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float) costInDollars
{return purchaseSharePrice * numberOfShares * conversionRate;}


- (float) valueInDollars
{    return currentSharePrice * numberOfShares * conversionRate;}
@end
