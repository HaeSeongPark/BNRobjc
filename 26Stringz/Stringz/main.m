//
//  main.m
//  Stringz
//
//  Created by rhino Q on 19/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableString *str = [NSMutableString new];
//        for(int i=0; i<10; i++) {
//            [str appendString:@"Aaron is cool!\n"];
//        }
//
//        // Declare a pointer to an NSError object, but do not instantiate it.
//        // The NSError instance will only be created if there is, in fact, an error.
//        NSError *error;
//
//        // Pass the NSError pointer by referecte to the NSString method
//        BOOL success = [str writeToFile:@"/tmp/cool.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
//
//        // Test the returned BOOL, and query the NSError if the write failed
//        if(success) {
//            NSLog(@"done writing /tmp/cool.txt");
//        } else {
//            NSLog(@"writing /tmp/cool.txt failed: %@",[error localizedDescription]);
//        }

#pragma mark Reading fiels with NSString
        NSError *error;
        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf" encoding:NSASCIIStringEncoding error:&error];
        if(str) {
            NSLog(@"resolv.conf looks like this: %@", str);
        } else {
            NSLog(@"read failed: %@", [error localizedDescription]);
        }
        
    }
    return 0;
}
