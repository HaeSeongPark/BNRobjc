//
//  BNRAsset.m
//  18BMITime
//
//  Created by rhino Q on 09/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRAsset.h"
#import "BRNEmployee.h"

@implementation BNRAsset

- (NSString *)description
{
    if (_holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", _label, _resaleValue, _holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", _label, _resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocation %@", self);
}

@end
