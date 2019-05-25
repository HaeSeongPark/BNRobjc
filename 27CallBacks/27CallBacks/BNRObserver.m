//
//  BNRObserver.m
//  27CallBacks
//
//  Created by rhino Q on 25/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//  https://nshipster.com/key-value-observing/

#import "BNRObserver.h"

@implementation BNRObserver

- (void)showLog:(NSDictionary * _Nullable)change keyPath:(NSString * _Nullable)keyPath object:(id _Nullable)object {
    NSString *oldvalue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newVlaue = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"Observerd: %@ of %@ was changed from %@ to %@", keyPath, object, oldvalue, newVlaue);
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    //(context == &contextForKVO)
    if ([keyPath isEqualToString:@"lastTime"])
    {
        [self showLog:change keyPath:keyPath object:object];
    } else {
//        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

+ (NSSet<NSString *> *)keyPathsForValuesAffectingLastTimeString
{
    return [NSSet setWithObjects:@"lastTime", nil];
}

@end
