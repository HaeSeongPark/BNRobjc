//
//  main.m
//  18BMITime
//
//  Created by rhino Q on 08/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BRNEmployee.h"
//#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of BNRPerson
        BRNEmployee *mikey = [[BRNEmployee alloc] init];
        
        // Give the instance variables interesting values using setters
//        [mikey setWeightInKilos:96];
//        [mikey setHeightInMeters:1.8];
        // repalce with dot notation
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        
        // TODO: -warning : 'dateWithNaturalLanguageString:' is deprecated: first deprecated in macOS 10.10
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        // Log the instance variables using the getters
//        float height = [mikey heightInMeters];
//        int weight = [mikey weightInKilos];
        
        // replace with dot notation
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        NSDate *date = mikey.hireDate;
        NSLog(@"%@ hired on %@",mikey, date);
        
        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
        
        // Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %f", bmi);
        double years = [mikey yearsOfEmployment];
        NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
        
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
        
        BNRForeignStockHolding *stock3 = [BNRForeignStockHolding new];
        stock3.purchaseSharePrice = 2.30;
        stock3.currentSharePrice = 4.50;
        stock3.numberOfShares = 40;
        stock3.conversionRate = 0.94;
        
        [stocks addObjectsFromArray:@[stock1,stock2,stock3]];
        
        for(BNRStockHolding *stock in stocks) {
            NSLog(@"%f", stock.valueInDollars);
        }
        
    }
    return 0;
}
