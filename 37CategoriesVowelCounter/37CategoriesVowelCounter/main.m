//
//  main.m
//  37CategoriesVowelCounter
//
//  Created by rhino Q on 25/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
// https://forums.bignerdranch.com/c/objective-c-programming-2nd-edition/38-bitwise-operations

#import <Foundation/Foundation.h>
#import "NSString+BNRVowelCounting.h"
#import "NSDate+BNRDateConvenicent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSString *string = @"Hello World!";
//        NSLog(@"%@ has %d vowels", string, [string bnr_vowelCount]);
//
//        NSDate *date = [NSDate new];
//        [date bnr_makeDateWithYear:2019 month:10 day:10];
//        NSLog(@"test : %@", date);
        
        uint64_t num = 1llu;
        
//        for(int i=1; i<=64; i++)
//        {
//            num = num << 1;
//            if(i%2 == 0){
//                num += 1;
//            }
//        }
        
        for(int i=0; i<64; i+=2)
        {
            num |= (1llu<<i);
        }
        
        
        NSLog(@"The number is %llu", num);
    }
    return 0;
}
