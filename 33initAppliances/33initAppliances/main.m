//
//  main.m
//  33initAppliances
//
//  Created by rhino Q on 23/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"
#import "BNROwnedAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *a = [BNRAppliance new];
        NSLog(@"a is %@", a);
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        NSLog(@"a is %@",a);
        
//        BNROwnedAppliance *a = [[BNROwnedAppliance alloc] initWith]
    }
    return 0;
}
