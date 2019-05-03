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
//        NSDate *now = [NSDate date];
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p",now);
        NSLog(@"The date is %@", now);
        
        double  seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.",seconds);
        
        // 13 Challenge
        NSHost *host = [NSHost currentHost];
        NSString *hosName = [host localizedName];
        NSLog(@"hostName : %@",hosName);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@",later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@",[cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                          forDate:now];
        NSLog(@"This is day %lu of the month",day);
        
        // 14 Challenge
        
        // make my dateOfBirth
        NSDateComponents *comps = [NSDateComponents new];
        [comps setYear:1990];
        [comps setMonth:6];
        [comps setDay:24];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double secondsSinceEarlierDate = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"I hae been alive for %f",secondsSinceEarlierDate);
    }
    return 0;
}
