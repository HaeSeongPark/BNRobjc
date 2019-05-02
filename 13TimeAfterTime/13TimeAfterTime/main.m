//
//  main.m
//  13TimeAfterTime
//
//  Created by rhino Q on 02/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p",now);
        NSLog(@"The date is %@", now);
        
        double  seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.",seconds);
        
        // Challenge
        NSHost *host = [NSHost currentHost];
        NSString *hosName = [host localizedName];
        NSLog(@"hostName : %@",hosName);
    }
    return 0;
}
