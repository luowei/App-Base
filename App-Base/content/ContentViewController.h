//
// Created by luowei on 15/1/16.
// Copyright (c) 2015 luowei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AppController;
@class EntriesController;


@interface ContentViewController : NSObject
@property(nonatomic, weak) AppController *appController;
@property(nonatomic, strong) EntriesController *entriesController;
@end