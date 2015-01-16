//
// Created by luowei on 15/1/16.
// Copyright (c) 2015 luowei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppFactory;


@interface AppController : NSObject

//同样在AppFactory中有AppController属性
@property(nonatomic, strong) AppFactory *factory;


-(instancetype)initWithAppFactory:(AppFactory *)factory;

- (void)launchInWindow:(UIWindow *)window;



@end