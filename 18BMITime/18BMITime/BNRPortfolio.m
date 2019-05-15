//
//  BNRPortfolio.m
//  18BMITime
//
//  Created by rhino Q on 10/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRPortfolio.h"
@interface BNRPortfolio()
{
    NSMutableArray *_holdings;
}

@end

@implementation BNRPortfolio

- (void)setHoldings:(NSArray *)holdings {
    _holdings = [holdings mutableCopy];
}

- (NSArray *)holdings {
    return [_holdings copy];
}

- (void)addHlding:(BNRStockHolding *)holding {
    if(!_holdings) {
        _holdings = [NSMutableArray new];
    }
    [_holdings addObject:holding];
}

- (void)removeHolding:(unsigned int)index {
    [_holdings removeObjectAtIndex:index];
}

//- (unsigned int)valueOfAsstes {
//    unsigned int sum = 0;
//    for(BNRAsset *a in _assets) {
//        sum += [a resaleValue];
//    }
//    return sum;
//}

- (float)totalValue {
    float result = 0.0;
    for(BNRStockHolding *h in _holdings) {
        result += [h valueInDollars];
    }
    return result;
}

- (NSArray *)topThreeOfHoldings {
    NSSortDescriptor *valueInDollars = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    [_holdings sortUsingDescriptors:@[valueInDollars]];
    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 3)];
    return [_holdings objectsAtIndexes:indexSet];
}

- (NSArray *)sortedBySymbolUsingAlphabetically {
        NSSortDescriptor *symbol = [NSSortDescriptor sortDescriptorWithKey:@"symbol" ascending:YES];
    [_holdings sortUsingDescriptors:@[symbol]];
    return [self holdings];
}

@end
