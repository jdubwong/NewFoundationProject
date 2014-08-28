//
//  ForeignStockHolding.h
//  NewFoundationProject
//
//  Created by James Wong on 8/18/14.
//  Copyright (c) 2014 James Wong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
    
}
@property float conversionRate;
- (float) costInDollars;
- (float) valueInDollars;

@end
