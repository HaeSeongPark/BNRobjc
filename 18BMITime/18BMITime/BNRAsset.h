//
//  BNRAsset.h
//  18BMITime
//
//  Created by rhino Q on 09/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BRNEmployee;

NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;

@property (nonatomic, weak) BRNEmployee *holder;

@end

NS_ASSUME_NONNULL_END
