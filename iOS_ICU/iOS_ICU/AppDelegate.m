//
//  AppDelegate.m
//  iOS_ICU
//
//  Created by yuanshi on 2020/7/13.
//  Copyright © 2020 yuanshi. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *text = @"李 小 龙 ";
    //转成拼音
    NSLog(@"%@",[text stringByApplyingTransform:NSStringTransformToLatin reverse:NO]);
    //去掉拼音的音标
    NSLog(@"%@",[[text stringByApplyingTransform:NSStringTransformToLatin reverse:NO] stringByApplyingTransform:NSStringTransformStripCombiningMarks reverse:NO]);
    //转成繁体字
    NSLog(@"%@",[text stringByApplyingTransform:@"Hans-Hant" reverse:NO]);
    //去掉空格
    NSLog(@"%@",[text stringByApplyingTransform:@"[:Separator:] Remove" reverse:NO]);

    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
