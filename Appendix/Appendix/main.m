//
//  main.m
//  Appendix
//
//  Created by rhino Q on 28/05/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "BNRTowel.h"
//https://forums.developer.apple.com/thread/63537
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

NSArray *BNRHierarchyForClass(Class cls)
{
    NSMutableArray *classHierarchy = [NSMutableArray array];
    
    for(Class c = cls; c!=nil; c=class_getSuperclass(c))
    {
        NSString *className = NSStringFromClass(c);
        [classHierarchy insertObject:className atIndex:0];
    }
    
    return classHierarchy;
}

NSArray *BNRMethodsForClass(Class cls)
{
    unsigned int methodCOunt = 0;
    Method *methodList = class_copyMethodList(cls, &methodCOunt);
    NSMutableArray *methodArray = [NSMutableArray array];
    
    for(int m=0; m<methodCOunt; m++)
    {
        Method currentMethod = methodList[m];
        
        //Get the selector for the currnet method
        SEL methodSelector = method_getName(currentMethod);
        
        // Add its string representation to the array
        [methodArray addObject:NSStringFromSelector(methodSelector)];
    }
    
    return methodArray;
}

NSArray *BNRInstancesVariableForClass(Class cls)
{
    unsigned int instacneVariablesCount = 0;
    Ivar *ivarList = class_copyIvarList(cls, &instacneVariablesCount);
    NSMutableArray *ivarArray = [NSMutableArray array];
    
    for(int i=0; i<instacneVariablesCount; i++)
    {
        Ivar currnetIvar = ivarList[i];
        NSString *ivarName = [NSString stringWithUTF8String:ivar_getName(currnetIvar)];
        [ivarArray addObject:ivarName];
        
    }
    
    return ivarArray;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRTowel *myTowel = [BNRTowel new];
        [myTowel addObserver:nil
                  forKeyPath:@"location"
                     options:NSKeyValueObservingOptionNew
                     context:NULL];
        
        // Create an an array of dictionaires, where each dictionay
        // will end up holding the class name, hierarchy, and method lsit
        // for a given class
        NSMutableArray *runtimeClassesInfo = [NSMutableArray array];
        
        unsigned int classCount = 0;
        
        Class *classList = objc_copyClassList(&classCount);
        
        for(int i = 0; i < classCount; i++)
        {
            Class currentClass = classList[i];
            NSString *className = NSStringFromClass(currentClass);
           
            NSArray *hierarchy = BNRHierarchyForClass(currentClass);
            NSArray *methods = BNRMethodsForClass(currentClass);
            NSArray *ivars = BNRInstancesVariableForClass(currentClass);
            
            NSString *classNameWithIndex = [NSString stringWithFormat:@"%@%d", className, i];
            
            NSDictionary *classInfoDic = @{
                                           @"className":classNameWithIndex,
                                           @"hierarchy":hierarchy,
                                           @"methods":methods,
                                           @"ivars":ivars
                                           };
            [runtimeClassesInfo addObject:classInfoDic];
        }
        free(classList);
        
        // Sort the classes info array alphabetically by name, and log it.
        NSSortDescriptor *alphaAsc = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
        NSArray *sortedArray = [runtimeClassesInfo sortedArrayUsingDescriptors:@[alphaAsc]];
        NSLog(@"There are %ld classes registered with this program's Runtime.",sortedArray.count);
        NSLog(@"%@",sortedArray);
    }

    return 0;
}
