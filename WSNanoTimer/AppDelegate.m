//
//  AppDelegate.m
//  WSNanoTimer
//
//  Created by Cristian A Monterroza on 4/4/13.
//  Copyright (c) 2013 wrkstrm. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CFTimeInterval executionTimeMilli = [self executionTime: kWSTimeUnitMillisecond block:^{
        NSLog(@"You can add or subtract between 0 to 9 decimal places of accuracy.");
        NSLog(@"With the \"kWSTimeUnitMillisecond\" option 16.667 = 1/60 (1 frame)");
    }];
    NSLog(@"- Result: The previous 2 logs took this many milliseconds to complete: %f", executionTimeMilli);
    
    CFTimeInterval executionTimeMilliPlus1 = [self executionTime: kWSTimeUnitMillisecond + 1 block:^{
        NSLog(@"With the \"kWSTimeUnitMillisecond + 1\" option 166.6667 = 1/60 (1 frame)");
        NSLog(@"This resolution is useful because it makes the cost of individual calls visible.");
    }];
    NSLog(@"- Result: The previous log took this many 1/10,000th of seconds to complete: %f", executionTimeMilliPlus1);
    
    CFTimeInterval executionTimeNano = [self executionTime: kWSTimeUnitNanosecond block:^{}];
    NSLog(@"- Result: I guess it takes this many Nanoseconds to call an empty block: %f", executionTimeNano);
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
