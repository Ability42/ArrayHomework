//
//  Animal.m
//  ArrayHomework
//
//  Created by Stepan Paholyk on 3/28/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.kind = mammal;
        self.ill = NO;
    }
    return self;
}

- (NSString *)description {
    NSString* tempStr;
    NSString* enumStr;
    NSString* allInform;
    
    if (_ill) {
        tempStr = @"Animal is ill";
    } else {
        tempStr = @"Animal is not ill";
    }
    
    if (_kind == 0) {
        enumStr = @"Bird";
    } else if (_kind == 1) {
        enumStr = @"Fish";
    } else if (_kind == 2) {
        enumStr = @"Mammal";
    }
    
    allInform = [NSString stringWithFormat:@"\nnickName: %@\nKind: %@\nIll: %@" ,_nickName, enumStr, tempStr];
    return allInform;
}

- (void) movement {
    if (!self.ill) {
        NSLog(@"OK, I'll running🏃🏽");
    } else {
        NSLog(@"Sorry i'm gonna to hospital");
    }
}
@end
