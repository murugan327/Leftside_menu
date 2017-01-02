//
//  AppDelegate.h
//  Lefeside_Menu
//
//  Created by murugan on 02/01/17.
//  Copyright © 2017 murugan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "REFrostedViewController.h"
#import "Menu_ViewController.h"
#import "Home_ViewController.h"
#import "DEMONavigationController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate,REFrostedViewControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
@property (nonatomic, strong) REFrostedViewController *sideMenuViewController;
@property (nonatomic, strong) Menu_ViewController *menuViewController;
@property (nonatomic, strong) Home_ViewController *mainViewController;

@end

