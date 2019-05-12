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
#import "BNRAsset.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // Create an instance of BNRPerson
        BRNEmployee *mikey = [[BRNEmployee alloc] init];
//        unsigned int mikeysCode = mikey.officeAlarmCode;
//
//        // Give the instance variables interesting values using setters
////        [mikey setWeightInKilos:96];
////        [mikey setHeightInMeters:1.8];
//        // repalce with dot notation
//        mikey.weightInKilos = 96;
//        mikey.heightInMeters = 1.8;
//        mikey.employeeID = 12;
//
//        // TODO: -warning : 'dateWithNaturalLanguageString:' is deprecated: first deprecated in macOS 10.10
//        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
//
//        // Log the instance variables using the getters
////        float height = [mikey heightInMeters];
////        int weight = [mikey weightInKilos];
//
//        // replace with dot notation
//        float height = mikey.heightInMeters;
//        int weight = mikey.weightInKilos;
//
//        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
//
//        NSDate *date = mikey.hireDate;
//        NSLog(@"%@ hired on %@",mikey, date);
//
//        NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
//
//        // Log some values using custom methods
//        float bmi = [mikey bodyMassIndex];
//        NSLog(@"mikey has a BMI of %f", bmi);
//        double years = [mikey yearsOfEmployment];
//        NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
//
//        // challenge
          // + ch21 challenge
//        NSMutableArray *stocks = [NSMutableArray array];
        BNRStockHolding *stock1 = [BNRStockHolding new];
        stock1.purchaseSharePrice = 2.30;
        stock1.currentSharePrice = 4.50;
        stock1.numberOfShares = 40;
        stock1.symbol = @"stock1";

        BNRStockHolding *stock2 = [BNRStockHolding new];
        stock2.purchaseSharePrice = 12.19;
        stock2.currentSharePrice = 10.56;
        stock2.numberOfShares = 90;
        stock2.symbol = @"stock2";

        BNRForeignStockHolding *stock3 = [BNRForeignStockHolding new];
        stock3.purchaseSharePrice = 2.30;
        stock3.currentSharePrice = 4.50;
        stock3.numberOfShares = 40;
        stock3.conversionRate = 0.94;
        stock3.symbol = @"stock3";
        
        BNRPortfolio *p1 = [[BNRPortfolio alloc] init];
        [p1 addHlding:stock1];
        [p1 addHlding:stock2];
        [p1 addHlding:stock3];
        
        NSLog(@"totalValue : %f", [p1 totalValue]);
//
//        [stocks addObjectsFromArray:@[stock1,stock2,stock3]];
//
//        for(BNRStockHolding *stock in stocks) {
//            NSLog(@"%f", stock.valueInDollars);
//        }
        
        NSMutableArray *employees = [NSMutableArray new];
        for(int i=0; i<10; i++) {
            BRNEmployee *mikey = [BRNEmployee new];
            
            // Give the instance variables interesting values
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            // Put the employee in the employees array
            [employees addObject:mikey];
        }
        
        NSMutableArray *allAssets = [NSMutableArray new];
        
        for(int i=0; i<10; i++) {
            BNRAsset *asset = [BNRAsset new];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
//            NSUInteger randomIndex = random() % [employees count];
            NSUInteger randomIndex = 0;
            
            BRNEmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
            
            [allAssets addObject:asset];
        }
        
        // ch21 challenge 2 test
//        NSLog(@"Employees: %@", [[employees objectAtIndex:0] assets]);
//        [[employees objectAtIndex:0] removeAssetAtIndex:0];
//        NSLog(@"Employees: %@", [[employees objectAtIndex:0] assets]);
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        NSLog(@"Giving up ownership of arrays");
        
        allAssets = nil;
        employees = nil;
    }
    sleep(100);
    return 0;
}
