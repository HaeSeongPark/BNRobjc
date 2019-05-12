//
//  BRNEmployee.m
//  18BMITime
//
//  Created by rhino Q on 09/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BRNEmployee.h"
#import "BNRAsset.h"

@interface BRNEmployee()
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BRNEmployee

//Accessors for asstes properties

- (void)setAssets:(NSArray *)assets {
    _assets = [assets mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a {
    if(!_assets) {
        _assets = [NSMutableArray new];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (BNRAsset *)removeAssetAtIndex:(NSUInteger)index {
    BNRAsset *assetToRemove = [_assets objectAtIndex:index];
    [_assets removeObjectAtIndex:index];
    return assetToRemove;
}

- (unsigned int)valueOfAsstes {
    unsigned int sum = 0;
    for(BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}

-(double)yearsOfEmployment {
    if(self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

- (float)bodyMassIndex {
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>",
            self.employeeID, self.valueOfAsstes];
}

- (void)dealloc
{
    NSLog(@"deallcation %@", self);
}

@end
