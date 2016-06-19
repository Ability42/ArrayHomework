//
//  Human.m
//  ArrayHomework
//
//  Created by Stepan Paholyk on 3/19/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Human.h"

@implementation Human

- (NSString *)description {
    NSString* tempStr;
    NSString* allInform;
    if (_gender) {
        tempStr = @"Woman";
    } else {
        tempStr = @"Man";
    }
    allInform = [NSString stringWithFormat:@"\nName: %@\nHeight: %f\nGender: %@", _name, _height, tempStr];
    return allInform;
}

- (void) movement {
    NSLog(@"%@ set off on a journey!", self.name);
}
@end