//
// Created by luowei on 15/1/16.
// Copyright (c) 2015 luowei. All rights reserved.
//

#import "AppFactory.h"
#import "AppController.h"
#import "EntriesController.h"
#import "ContentViewController.h"


@implementation AppFactory {
    UINavigationController *_entriesNavigationtionController;
    UINavigationController *_settingNavigationtionController;

}


- (UINavigationController *)entriesNavigationtionController {
    if(!_entriesNavigationtionController){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        _entriesNavigationtionController = [storyboard instantiateInitialViewController];

        //获得最
        ContentViewController *contentViewController = _entriesNavigationtionController.topViewController;
        contentViewController.appController = self.appController;
        contentViewController.entriesController = self.entriesController;
    }

    return _entriesNavigationtionController;
}

- (UINavigationController *)settingNavigationtionController {
    return nil;
}

@end