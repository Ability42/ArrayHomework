//
//  Heart.m
//  ArrayHomework
//
//  Created by Stepan Paholyk on 3/28/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Heart.h"

@implementation Heart

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.turnOn = YES;
    }
    return self;
}

- (void) movement {
    if (self.turnOn) {
        NSLog(@"Just a second, i'll check the time");
    }
}

@end
