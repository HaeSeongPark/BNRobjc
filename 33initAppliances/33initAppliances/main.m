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
//        [a setProductName:@"Washing Machine"];
        //        [a setVoltage:240];

        [a setValue:@"Washing Machine" forKey:@"productName"];
        [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
        NSLog(@"a is %@",a);
        
//        BNROwnedAppliance *a = [[BNROwnedAppliance alloc] initWith]
        
        NSLog(@"the proudct name is %@", [a valueForKey:@"productName"]);
    }
    return 0;
}
