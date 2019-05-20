//
//  BNRLogger.h
//  27CallBacks
//
//  Created by rhino Q on 20/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}

@property (nonatomic) NSDate *lastTime;
-(NSString *)lastTimeString;
-(void)updateLastTime:(NSTimer *)t;

@end

NS_ASSUME_NONNULL_END
