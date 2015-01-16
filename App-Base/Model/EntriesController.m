//
// Created by luowei on 15/1/16.
// Copyright (c) 2015 luowei. All rights reserved.
//

#import "EntriesController.h"
#import "Entry.h"


@implementation EntriesController {

}

-(instancetype)init{
    if(self=[super init]){
        [self loadEntries];
    }
    return self;
}

- (void)loadEntries {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"AppContextData" ofType:@"plist"];
    NSArray *entries = [NSArray arrayWithContentsOfFile:path];

    for(NSDictionary *dict in entries){
        Entry *entry = [Entry new];

        entry.name = dict[@"name"];
        entry.body = dict[@"body"];
        entry.image = [UIImage imageNamed:dict[@"image"]];
        entry.MoreDetails = dict[@"moreDetails"];
    }
}


@end