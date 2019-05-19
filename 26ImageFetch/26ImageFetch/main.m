//
//  main.m
//  26ImageFetch
//
//  Created by rhino Q on 19/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString: @"http://www.google.com/images/logos/ps_logo2.png"];
        //        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        //        NSError *error = nil;
        //        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];
        
        
        NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            if(!data) {
                NSLog(@"fetch failed: %@", [error localizedDescription]);
            } else {
                NSLog(@"The file is %lu bytes", [data length]);
                BOOL written = [data writeToFile:@"/tmp/google2.png" options:NSDataWritingAtomic error:&error];
                
                if(!written) {
                    NSLog(@"write failed : %@", [error localizedDescription]);
                } else {
                     NSLog(@"Success!");
                }
                
            }
            
        }];
        
        [downloadTask resume];
        
        //
        //        if(!data) {
        //            NSLog(@"fetch failed: %@", [error localizedDescription]);
        //            return 1;
        //        }
        //
        //        NSLog(@"The file is %lu bytes", [data length]);
        //
        //
        //        if(!written) {
        //            NSLog(@"write failed : %@", [error localizedDescription]);
        //            return 1;
        //        }
        
        
//        NSLog(@"Success!");
        
#pragma mark Reading an NSData from a file
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes", [readData length]);
        
    }
    sleep(5);
    return 0;
}
