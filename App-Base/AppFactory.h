//
// Created by luowei on 15/1/16.
// Copyright (c) 2015 luowei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppController;
@class EntriesController;


@interface AppFactory : NSObject

//因为AppController 中有 AppFactory 属性,为防止重复引用，这里用weak；
//这个对象不受工厂管理，而是被AppDelegate管理,会在AppDelegate中创建;
@property(weak) AppController *appController;

//数据模型
@property(readonly) EntriesController *entriesController;

@property(readonly) UINavigationController *entriesNavigationtionController;
@property(readonly) UINavigationController *settingNavigationtionController;

@end