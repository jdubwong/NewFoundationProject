//
//  main.m
//  NewFoundationProject
//
//  Created by James Wong on 8/11/14.
//  Copyright (c) 2014 James Wong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        //Chapter 13
        /*
        NSTimeZone *systimezone = [NSTimeZone systemTimeZone];
        Boolean DST = [systimezone isDaylightSavingTime];
        NSLog(@"\n%s\n",DST ? "Yes, it is" : "No, it's not");
        */
        
        //Chapter 14
        /*
         NSHost *hostInfo = [NSHost currentHost];
        NSLog(@"%@", hostInfo);
        
        NSString *localName = [hostInfo localizedName];
        NSLog(@"\n\n\n%@", localName);
        */
        
        
        //Chapter 15
        /*
        NSString *diary = @"Milk";
        NSString *fruits = @"Oranges";
        NSString *grains = @"Bread";
        NSString *vegetables = @"Spinach";
        
        
        NSMutableArray *groceries = [NSMutableArray array];
        [groceries addObject:diary];
        [groceries addObject:fruits];
        [groceries addObject:grains];
        [groceries addObject:vegetables];
        
        for (NSString *d in groceries)
        {
            NSLog(@"\n%@", d);
        }
        NSLog(@"\n");
        */
        
        //Chapter 15
        /*
        
        NSString *properNames
        = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                    encoding:NSUTF8StringEncoding
                                       error:NULL];
        
        NSString *words
        = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                    encoding:NSUTF8StringEncoding
                                       error:NULL];
        
        NSMutableArray *matches = [NSMutableArray array];
        
        NSArray *properNamesArray = [properNames componentsSeparatedByString:@"\n"];
        NSArray *wordsArray = [words componentsSeparatedByString:@"\n"];
        
        NSMutableArray *allWords = [NSMutableArray arrayWithArray:wordsArray];
        [allWords removeObjectsInArray:properNamesArray];
        
        for (NSString *n in allWords)
        {
            for (NSString *m in properNamesArray)
            {
                if ([n caseInsensitiveCompare:m] == NSOrderedSame)
                {
                   [matches addObject:n];
                }
            }
        }
                                                            
        for (NSString *o in matches)
            NSLog (@"%@\n", o);
        */ 
        
        
        
        // Chapter 17
    
        NSMutableArray *portfolio = [NSMutableArray array];
        
        StockHolding *stock1 = [[StockHolding alloc] init];
        StockHolding *stock2 = [[StockHolding alloc] init];
        StockHolding *stock3 = [[StockHolding alloc] init];
        
        [stock1 setPurchaseSharePrice:2.30];
        [stock1 setCurrentSharePrice:4.50];
        [stock1 setNumberOfShares: 40];
        
        [stock2 setPurchaseSharePrice:12.10];
        [stock2 setCurrentSharePrice:10.50];
        [stock2 setNumberOfShares: 90];

      
        [stock3 setPurchaseSharePrice:45.10];
        [stock3 setCurrentSharePrice:49.51];
        [stock3 setNumberOfShares: 210];
        
        [portfolio addObject:stock1];
        [portfolio addObject:stock2];
        [portfolio addObject:stock3];
        
        
        for (StockHolding *d in portfolio)
        {
            float x = [d valueInDollars];
            printf("%f\n", x);
            
        }
         
        
        // Chapter 18
        ForeignStockHolding *stock4 = [[ForeignStockHolding alloc] init];
        
        [stock4 setPurchaseSharePrice:2.30];
        [stock4 setCurrentSharePrice:4.50];
        [stock4 setNumberOfShares: 40];
        [stock4 setConversionRate:.94];
        
        [portfolio addObject:stock4];

        for (StockHolding *d in portfolio)
        {
            float x = [d valueInDollars];
            printf("Stock: %f\n", x);
        }
        

        
        // Chapter 19
        Portfolio * account = [[Portfolio alloc] init];
        
        
        [account addToPortfolio:stock1];
        [account addToPortfolio:stock2];
        [account addToPortfolio:stock3];
        [account addToPortfolio:stock4];

    
        printf("\n\nChapter 19: Total Portfolio Value: %f\n", [account returnTotal]);
        
        
        
        
    }
    return 0;
}

