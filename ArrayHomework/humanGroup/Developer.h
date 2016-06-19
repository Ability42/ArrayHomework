//
//  Developer.h
//  ArrayHomework
//
//  Created by Stepan Paholyk on 3/28/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Human.h"

@interface Developer : Human

@property (strong, nonatomic) NSString* branch;
@property (strong, nonatomic) NSString* city;
@property (assign, nonatomic) NSInteger age;

- (void) movement;
- (void) makeCode;

@end
