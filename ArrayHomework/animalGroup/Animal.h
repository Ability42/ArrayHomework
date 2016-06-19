//
//  Animal.h
//  ArrayHomework
//
//  Created by Stepan Paholyk on 3/28/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject


typedef enum {
    bird,
    fish,
    mammal
}Kind;

@property(assign, nonatomic) Kind kind;
@property(assign, nonatomic) BOOL ill;
@property(strong, nonatomic) NSString* nickName;

- (void) movement;

@end
