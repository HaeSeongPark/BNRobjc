//
//  NSString+BNRVowelCounting.m
//  37CategoriesVowelCounter
//
//  Created by rhino Q on 25/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "NSString+BNRVowelCounting.h"

@implementation NSString (BNRVowelCounting)

- (int)bnr_vowelCount
{
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    
    NSUInteger count = [self length];
    int sum = 0;
    for(int i = 0; i < count; i++)
    {
        unichar c = [self characterAtIndex:i];
        if([charSet characterIsMember:c])
        {
            sum++;
        }
    }
    return sum;
}

@end
