//
//  BNRAsset.m
//  18BMITime
//
//  Created by rhino Q on 09/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
    NSLog(@"deallocation %@", self);
}

@end
