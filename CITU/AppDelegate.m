//
//  AppDelegate.m
//  CITU
//
//  Created by centrin on 16/6/6.
//  Copyright © 2016年 CYKJ. All rights reserved.
//

#import "AppDelegate.h"
#import "SuperID.h"
#import "UMCommunity.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self __initOuterSDK];
    [self __customInterface];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - 加载第三方库

- (void)__initOuterSDK
{
    // ----- 脸部识别 -----
    [[SuperID sharedInstance]registerAppWithAppID:@"0deb35cfdc494e195ef46954" withAppSecret:@"b1589afb07e8e0f28535b123"];
    
    //开启SuperID SDK的调试模式，开发者在Release时，将该模式设置为NO.
    [SuperID setDebugMode:YES];
    //设置一登 SDK 的语言模式，默认为自动模式。
    [SuperID setLanguageMode:SIDAutoMode];
    
    // ----- 友盟微社区 -----
    [UMCommunity setAppKey:@"574fe343e0f55aae63001193" withAppSecret:@"956c23ae94b2d464592e1a6ef365a4ee"];
}

#pragma mark - 自定义UI

- (void)__customInterface
{
    // 标题栏背景色
//    [[UINavigationBar appearance] setBarTintColor:COLOR_CITU_BROWN];
    // 返回按钮颜色
    [[UINavigationBar appearance] setTintColor:COLOR_CITU_BROWN];
    // 标题颜色
//    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    // tabbar文字颜色
//    [[UITabBar appearance] setTintColor:COLOR_CITU_BROWN];
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabbarBg"]];
    
}

@end
