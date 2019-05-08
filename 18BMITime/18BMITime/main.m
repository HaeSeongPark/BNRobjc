//
//  main.m
//  18BMITime
//
//  Created by rhino Q on 08/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of BNRPerson
        BNRPerson *mikey = [[BNRPerson alloc] init];
        
        // Give the instance variables interesting values using setters
//        [mikey setWeightInKilos:96];
//        [mikey setHeightInMeters:1.8];
        // repalce with dot notation
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        
        // Log the instance variables using the getters
//        float height = [mikey heightInMeters];
//        int weight = [mikey weightInKilos];
        
        // replace with dot notation
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        // Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %f", bmi);
        
        // challenge
        NSMutableArray *stocks = [NSMutableArray array];
        BNRStockHolding *stock1 = [BNRStockHolding new];
        stock1.purchaseSharePrice = 2.30;
        stock1.currentSharePrice = 4.50;
        stock1.numberOfShares = 40;
        
        BNRStockHolding *stock2 = [BNRStockHolding new];
        stock2.purchaseSharePrice = 12.19;
        stock2.currentSharePrice = 10.56;
        stock2.numberOfShares = 90;
        
        BNRStockHolding *stock3 = [BNRStockHolding new];
        stock3.purchaseSharePrice = 45.10;
        stock3.currentSharePrice = 49.51;
        stock3.numberOfShares = 210;
        
        [stocks addObjectsFromArray:@[stock1,stock2,stock3]];
        
        for(BNRStockHolding *stock in stocks) {
            NSLog(@"%f", stock.valueInDollars);
        }
        
    }
    return 0;
}
