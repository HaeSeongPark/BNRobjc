//
//  BNRLogger.m
//  27CallBacks
//
//  Created by rhino Q on 20/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "BNRLogger.h"

@interface BNRLogger()

- (void)zoneChange:(NSNotification *)note;

@end

@implementation BNRLogger

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if(!dateFormatter)
    {
        dateFormatter = [NSDateFormatter new];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    if(!_incomingData)
    {
        _incomingData = [NSMutableData new];
    }
    
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    
    _incomingData = nil;
    
    NSLog(@"string has %lu characters",[string length]);
    
//     Uncomment the next line to see the entire fetched file
     NSLog(@"The whole string is %@", string);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

@end
