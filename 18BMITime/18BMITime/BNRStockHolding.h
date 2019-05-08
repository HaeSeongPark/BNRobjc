//
//  BNRStockHolding.h
//  18BMITime
//
//  Created by rhino Q on 08/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;

-(float)costInDollars; // purchaseSharePrice * numberOfShares
-(float)valueInDollars; // currentShareprice * numberOfShares

@end

NS_ASSUME_NONNULL_END
