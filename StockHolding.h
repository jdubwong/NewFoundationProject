//
//  StockHolding.h
//  NewFoundationProject
//
//  Created by James Wong on 8/15/14.
//  Copyright (c) 2014 James Wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
        //Add Variables Here
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float) costInDollars;
- (float) valueInDollars;
- (float) portfolioValue:(NSMutableArray *)a;

@end
