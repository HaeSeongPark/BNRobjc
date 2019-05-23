//
//  BNROwnedAppliance.h
//  33initAppliances
//
//  Created by rhino Q on 23/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRAppliance.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;
// The designated initializer
-(instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n;
-(void)addOwnerName:(NSString *)n;
-(void)removeOwnerName:(NSString *)n;

@end

NS_ASSUME_NONNULL_END
