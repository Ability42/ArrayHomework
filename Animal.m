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
    NSString* allInform;
    
    if (_ill) {
        tempStr = @"Animal is ill";
    } else {
        tempStr = @"Animal is not ill";
    }
    
    allInform = [NSString stringWithFormat:@"nickName: %@\nKind: %u\nIll: %@" ,_nickName, _kind, tempStr];
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
