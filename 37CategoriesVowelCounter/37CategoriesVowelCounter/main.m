//
//  main.m
//  37CategoriesVowelCounter
//
//  Created by rhino Q on 25/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+BNRVowelCounting.h"
#import "NSDate+BNRDateConvenicent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"Hello World!";
        NSLog(@"%@ has %d vowels", string, [string bnr_vowelCount]);
        
        NSDate *date = [NSDate new];
        [date bnr_makeDateWithYear:2019 month:10 day:10];
        NSLog(@"test : %@", date);
    }
    return 0;
}
