//
//  AppDelegate.h
//  BeaconReceiver
//
//  Created by ranvijay on 2/16/17.
//  Copyright © 2017 Venkatesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

