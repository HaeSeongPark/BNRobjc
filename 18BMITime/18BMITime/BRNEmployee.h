//
//  BRNEmployee.h
//  18BMITime
//
//  Created by rhino Q on 09/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRPerson.h"
@class BNRAsset;

NS_ASSUME_NONNULL_BEGIN

@interface BRNEmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic) NSString *lastName;
@property (nonatomic) BNRPerson *spouse;
@property (nonatomic) NSMutableArray *children;

@property (nonatomic, copy) NSSet *assets;
-(void)addAsset:(BNRAsset *)a;
//-(BNRAsset*)removeAssetAtIndex:(NSUInteger)index;
-(unsigned int)valueOfAssets;

-(double)yearsOfEmployment;

@end

NS_ASSUME_NONNULL_END
