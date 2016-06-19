//
//  Human.h
//  ArrayHomework
//
//  Created by Stepan Paholyk on 3/19/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import <Foundation/Foundation.h>\

typedef enum {
    genderMale,
    genderFemale
} Gender;

@interface Human : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) double height;
@property (assign, nonatomic) Gender gender;

- (void) movement;

@end
