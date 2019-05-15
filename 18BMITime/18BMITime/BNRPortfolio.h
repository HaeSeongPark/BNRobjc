//
//  BNRPortfolio.h
//  18BMITime
//
//  Created by rhino Q on 10/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *holdings;
-(float)totalValue;
-(void)addHlding:(BNRStockHolding *)holding;
-(void)removeHolding:(unsigned int)index;
-(NSArray *)topThreeOfHoldings;
-(NSArray *)sortedBySymbolUsingAlphabetically;
@end

NS_ASSUME_NONNULL_END
