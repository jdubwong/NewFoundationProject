//
//  Portfolio.h
//  NewFoundationProject
//
//  Created by James Wong on 8/19/14.
//  Copyright (c) 2014 James Wong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject
{
    NSMutableArray * portfolio;
    float totalValue;
}

@property float totalValue;

- (void)addToPortfolio:(StockHolding *)a;
- (float)returnTotal;
    

@end
