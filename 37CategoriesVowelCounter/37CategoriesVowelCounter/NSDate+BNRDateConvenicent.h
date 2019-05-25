//
//  NSData+BNRDateConvenicent.h
//  37CategoriesVowelCounter
//
//  Created by rhino Q on 25/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (BNRDateConvenicent)
- (NSDate*)bnr_makeDateWithYear:(int)y month:(int)m day:(int)d;
@end

NS_ASSUME_NONNULL_END
