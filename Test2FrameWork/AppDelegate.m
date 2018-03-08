//
//  AppDelegate.m
//  Test2FrameWork
//
//  Created by Shimaa Hassan on 2/26/18.
//  Copyright © 2018 Shimaa Hassan. All rights reserved.
//

#import "AppDelegate.h"
#import <Tagipedia/Tagipedia.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    Tagipedia *newTBuilder =[[Tagipedia alloc] initWithClientId:@"" clientSecret:@"" identifer:@"" UUID:@""];
    newTBuilder.onNotificationPressed = ^(NSDictionary *data) {
        NSLog(@"data %@", data);
        // push your view controller here
    };
//    [newTBuilder setDifferentBeaconNotifyPeriod:1000];
//    [newTBuilder setSameBeaconNotifyPeriod:20000];
    [newTBuilder build];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [Tagipedia applicationDidEnterBackground];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
