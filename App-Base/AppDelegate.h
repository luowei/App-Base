//
//  AppDelegate.h
//  App-Base
//
//  Created by luowei on 15/1/16.
//  Copyright (c) 2015年 luowei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property(nonatomic, strong) AppController *appController;
@end

