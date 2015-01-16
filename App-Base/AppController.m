//
// Created by luowei on 15/1/16.
// Copyright (c) 2015 luowei. All rights reserved.
//

#import "AppController.h"
#import "AppFactory.h"


@implementation AppController {

}

//初始化AppController,并添加到工厂里
- (instancetype)initWithAppFactory:(AppFactory *)factory {
    if(self = [super init]){
        _factory = factory;
        _factory.appController = self;
    }
    return self;
}

//加载Window的rootViewController
- (void)launchInWindow:(UIWindow *)window {
    window.rootViewController = self.factory.entriesNavigationtionController;
    [window makeKeyAndVisible];
}




@end