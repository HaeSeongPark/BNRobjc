//
//  BNRStockHolding.m
//  18BMITime
//
//  Created by rhino Q on 08/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars {
    return _purchaseSharePrice * _numberOfShares;
}

- (float)valueInDollars {
    return _currentSharePrice * _numberOfShares;
}

@end
