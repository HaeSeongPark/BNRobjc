//
//  NSData+BNRDateConvenicent.m
//  37CategoriesVowelCounter
//
//  Created by rhino Q on 25/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "NSDate+BNRDateConvenicent.h"

@implementation NSDate (BNRDateConvenicent)

- (NSDate*)bnr_makeDateWithYear:(int)y month:(int)m day:(int)d
{
    NSDate *result = [NSDate new];
    NSDateComponents *comps = [NSDateComponents new];
    [comps setYear:y];
    [comps setMonth:m];
    [comps setDay:d];
    
    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    result = [cal dateFromComponents:comps];
    
    return result;
}

@end
