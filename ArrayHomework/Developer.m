//
//  Developer.m
//  ArrayHomework
//
//  Created by Stepan Paholyk on 3/28/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Developer.h"
#import "Human.h"

@implementation Developer

/*- (NSString *)description {
    NSString* extraProperties = [NSString stringWithFormat:@"\nBranch: %@\nCity: %@\nAge: %d\n", _branch, _city, _age];
    return extraProperties;
}*/

- (void) movement {
    [super movement];
    NSLog(@"It'll be a 3rd week of a project");
}

- (void) makeCode {
    NSLog(@"Hello world!");
}

@end
