//
//  BNRForeignStockHolding.m
//  18BMITime
//
//  Created by rhino Q on 09/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars {
    return self.purchaseSharePrice * self.numberOfShares * self.conversionRate;
}


- (float)valueInDollars {
    return self.currentSharePrice * self.numberOfShares * self.conversionRate;
}


@end
