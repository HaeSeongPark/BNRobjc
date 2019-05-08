//
//  BNRPerson.h
//  18BMITime
//
//  Created by rhino Q on 08/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// BNRPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
