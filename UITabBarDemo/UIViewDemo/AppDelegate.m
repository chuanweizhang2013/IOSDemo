//
//  AppDelegate.m
//  UIViewDemo
//
//  Created by chuanwei on 8/22/15.
//  Copyright (c) 2015 chuanwei. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "TableViewController.h"

@implementation AppDelegate
{
    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.windowLevel =  UIWindowLevelStatusBar;
    // Override point for customization after application launch.

    NSMutableArray *controllers =  [NSMutableArray array];
    
    NSArray* items = [NSArray arrayWithObjects:@"雨松MOMO",@"若若娃",@"小可爱",@"哇咔咔",@"小老虎",@"学苹果",@"快乐乐",@"寿司卷", nil];
    
    int count = [items count];
    for (int i=0; i<count; i++) {
        TableViewController *tabViewController =  [[TableViewController alloc] initController:[items objectAtIndex:i]];
        [tabViewController setTitle:[items objectAtIndex:i]];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:tabViewController];
        nav.title=[items objectAtIndex:i];
        nav.tabBarItem.image = [UIImage imageNamed:@"title.png"];
        [controllers addObject:nav];
    }
    
    UITabBarController * bar = [[UITabBarController alloc] init];
    bar.viewControllers = controllers;
    bar.customizableViewControllers = controllers;
    
    
//    MainViewController* mvc =  [[MainViewController alloc] init];
//    
//    UINavigationController *rnc = [[UINavigationController alloc] initWithRootViewController:mvc];
//
    self.window.rootViewController = bar;
    
    //[self.window addSubview:bar.view];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
//    UIWindow *window1 = [[UIWindow alloc] init];
//    window1.frame = CGRectMake(0, 0, 320, 200);
//    window1.backgroundColor = [UIColor blueColor];
//    window1.hidden = NO;
//    window1.windowLevel = UIWindowLevelStatusBar;
//    
//    [self.window addSubview:window1];
//
    
    return YES;
}

-(void)timetick
{
    NSArray*  subviews =  self.window.subviews;
    UIView* rootview = [subviews objectAtIndex:0];
    rootview.frame = CGRectMake(rootview.frame.origin.x, rootview.frame.origin.y, rootview.frame.size.width+5, rootview.frame.size.height+5);
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
