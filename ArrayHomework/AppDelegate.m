//
//  AppDelegate.m
//  ArrayHomework
//
//  Created by Stepan Paholyk on 3/19/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "AppDelegate.h"

/***Import Human's classes***/

#import "Human.h"
#import "Bicyclist.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Developer.h"

/***Import Animal's classes***/

#import "Animal.h"
#import "Hummanoid.h"
#import "Shark.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // NSArray* reversedRoom = [[room reverseObjectEnumerator] allObjects]; // room in backend order
    
    Human* humanObj = [[Human alloc] init];
    humanObj.name = @"Stepan";
    humanObj.height = 1.93f;
    humanObj.gender = genderMale;
    
    Bicyclist* bicyclistObj = [[Bicyclist alloc] init];
    bicyclistObj.name = @"Tom";
    bicyclistObj.height = 1.88f;
    bicyclistObj.gender = genderMale;
    
    Runner* runnerObj = [[Runner alloc] init];
    runnerObj.name = @"Scally";
    runnerObj.height = 1.77f;
    runnerObj.gender = genderFemale;
    
    Swimmer* swimmerObj = [[Swimmer alloc] init];
    swimmerObj.name = @"Max";
    swimmerObj.height = 1.93f;
    swimmerObj.gender = genderMale;
    
    Developer* devObj = [[Developer alloc] init];
    devObj.name = @"Jobs";
    devObj.gender = genderMale;
    devObj.height = 1.8f;
    
    [devObj setBranch:@"php"];
    [devObj setCity:@"San-Francisco"];
    [devObj setAge:20];
    
    Animal* animalObj = [[Animal alloc] init];
    animalObj.nickName = @"Benny";
    [animalObj setKind:mammal];
    [animalObj setIll:YES];
    
    Shark* sharkObj = [[Shark alloc] init];
    sharkObj.nickName = @"Sharpy";
    [sharkObj setKind:fish];
    [sharkObj setIll:NO];
    
    Animal* cowe = [[Animal alloc] init];
    cowe.nickName = @"Star";
    cowe.kind = mammal;
    cowe.ill = YES;
    
    Animal* parrot = [[Animal alloc] init];
    parrot.nickName = @"Chicko";
    parrot.kind = bird;
    parrot.ill = NO;
    
    Animal* monkey = [[Animal alloc] init];
    monkey.nickName = @"Bananna";
    monkey.kind = mammal;
    monkey.ill = NO;
    
    Animal* raven = [[Animal alloc] init];
    raven.nickName =  @"Caaaar";
    raven.kind = bird;
    raven.ill = YES;
    
    // NSArray* house = [[NSArray alloc] initWithObjects:swimmerObj, bicyclistObj, runnerObj, swimmerObj, devObj, animalObj, hummanoidObj, sharkObj, nil];
    // [self getInfoAbout:house];
    
    /****** Star level ******/
    
    NSArray* animalGroup = [[NSArray alloc] initWithObjects:animalObj, sharkObj, cowe, parrot, monkey, raven, nil];
    NSArray* fellowGroup = [[NSArray alloc] initWithObjects:swimmerObj, bicyclistObj, runnerObj, devObj, nil];
    
    //[self getInfoAboutAnimal:animalGroup andHuman:fellowGroup];
    
    /****** Superman level ******/
    
    NSArray* allKingOfMammal = [fellowGroup arrayByAddingObjectsFromArray:animalGroup];
    
    NSArray* sortedArray = [allKingOfMammal sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if ([obj1 isKindOfClass:[Human class]] && [obj2 isKindOfClass:[Human class]]) {
            return [[(Human*)obj1 name] compare:[(Human*) obj2 name]];
        } else if ([obj1 isKindOfClass:[Animal class]] && [obj2 isKindOfClass:[Animal class]]) {
                return [[(Animal*)obj1 nickName] compare:[(Animal*) obj2 nickName]];
        } else if ([obj1 isKindOfClass:[Human class]]) {
            return NSOrderedAscending;
        } else {
            return NSOrderedDescending;
        }
    }];

    [sortedArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%ld: %@", (unsigned long)idx, obj);
    }];
    
    return YES;
    
}

- (void) getInfoAboutAnimal:(NSArray *)animalArray andHuman:(NSArray *)humanArray {
    NSUInteger maxCountInArrays = MAX([animalArray count], [humanArray count]);
    
    for (int i = 0; i < maxCountInArrays; i++) {
        
        if (i <= [animalArray count] - 1) {
            NSLog(@"%@", [animalArray objectAtIndex:i]);
        }
        if (i <= [humanArray count] - 1) {
            NSLog(@"%@", [humanArray objectAtIndex:i]);
        }
    }
}

- (void) getInfoAbout:(NSArray *)array {
    for (id obj in array) {
        NSLog(@"Instance of %@", NSStringFromClass([obj class]));
        NSLog(@"%@", obj);
        [obj movement];
        if ([obj isKindOfClass:[Developer class]]) {
            Developer *dev = (Developer*) obj;
            NSLog(@"Branch: %@\n City: %@\nAge: %d", dev.branch, dev.city, dev.age);
            // MUST make this via - (NSString*) description
        }
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
