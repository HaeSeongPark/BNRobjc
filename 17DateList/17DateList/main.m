//
//  main.m
//  17DateList
//
//  Created by rhino Q on 07/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // Create three NSDate objects
//        NSDate *now = [NSDate date];
//        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60.0 * 60.0];
//        NSDate *yesterday = [now dateByAddingTimeInterval: -24 * 60.0 * 60.0];
//
//        // Create an array containing all three
////        NSArray *dateList = @[now, tomorrow, yesterday];
//
//        // Create an empty mutable array
//        NSMutableArray *dateList = [NSMutableArray array];
//
//        // Add two dates to the array
//        [dateList addObject:now];
//        [dateList addObject:tomorrow];
//
//        // Add yesterday at the beginning of the list
//        [dateList insertObject:yesterday atIndex:0];
//
//        // Print a couple of dates
////        NSLog(@"The first date is %@", dateList[0]);
////        NSLog(@"The third date is %@", dateList[2]);
//
//        // How many dates are in the array?
////        NSLog(@"There are %lu dates", (unsigned long)[dateList count]);
//
//        // Iterate over the array
////        NSUInteger dateCount = [dateList count];
////        for(int i = 0; i<dateCount; i++) {
////            NSDate *d = dateList[i];
////            NSLog(@"Here is a date:%@",d);
////        }
//
//        for(NSDate *d in dateList) {
//            NSLog(@"Here is a date: %@",d);
//        }
//
//        // Remove yesterday
//        [dateList removeObjectAtIndex:0];
//        NSLog(@"Now the first date is %@", dateList[0]);
//
//        // It will cause your program crash
////        NSLog(@"The fourth date is %@",dateList[3]); // beyond range
//
//        // challenge 1
//        NSMutableArray *groceries = [NSMutableArray array];
//        [groceries addObjectsFromArray:@[@"Loaf of break", @"Container of mil",@"Stick of butter"]];
//        for(NSString *grocery in groceries) {
//            NSLog(@"%@",grocery);
//        }
        
        // challenge 2
        // Read in a file as a huge string (ignoring the possibility of an error)
        NSString *nameString =
        [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                  encoding:NSUTF8StringEncoding
                                     error:NULL];
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        NSString *wordString = [NSString stringWithContentsOfFile: @"/usr/share/dict/words" encoding: NSUTF8StringEncoding error: NULL];
        
        NSArray *words = [wordString componentsSeparatedByString: @"\n"];

        
        int matchedCount = 0;
        
        // names.count are less than words.count
        for (NSString *name in names) {
            
            // check empty string
            if ( [name isEqualToString:@""]) { continue; }
            
            // Check occurence of n in words
            if ([words containsObject:name.lowercaseString]) {
                NSLog(@"matched word : %@", name);
                matchedCount++;
            }
        }
        NSLog(@"matchedCount : %d", matchedCount);
        

        
    }
    return 0;
}
