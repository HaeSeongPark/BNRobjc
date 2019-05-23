//
//  BNRAppliance.m
//  33initAppliances
//
//  Created by rhino Q on 23/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)init
{
//    [NSException raise:@"BNRWallSafeIitialization" format:@"Use initWIthSecreCode:, not init"];
    return [self initWithProductName:@"Unknown"];
}

- (instancetype)initWithProductName:(NSString *)pn
{
    
    if (self = [super init]) {
        _productName = [pn copy];
        _voltage = 120;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>",self.productName, self.voltage];
 }
            
@end
