//
//  main.m
//  15TimesTwo
//
//  Created by rhino Q on 06/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p",currentTime);
        
        NSDate *startTime = currentTime;
        
//        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p",currentTime);
        NSLog(@"The address of the original object is %p", startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
        
        
        NSString *slogan = @"I \u2661 New York!";
        NSLog(@"%@", slogan);
        
        // 16 challenge 1
        
        NSString *givenString = @"abcdEFg";
        NSString *stringToSearch = @"ef";
        
        NSRange match = [givenString rangeOfString:stringToSearch options:NSCaseInsensitiveSearch];
        if (match.location != NSNotFound ) {
            NSString *stringToFound = [givenString substringWithRange:match];
            NSLog(@"%@", stringToFound);
        }
        
        // 16 challenge 2
        NSLog(@"hey who is cool?");
        const char *name = readline(NULL);
        NSString *string = [NSString stringWithUTF8String:name];
        NSLog(@"%@ is really cool@\n\n",string);
    }
    return 0;
}
