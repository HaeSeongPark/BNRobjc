//
//  BNRPortfolio.m
//  18BMITime
//
//  Created by rhino Q on 10/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRPortfolio.h"

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

@end
