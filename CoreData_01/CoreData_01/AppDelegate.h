//
//  AppDelegate.h
//  CoreData_01
//
//  Created by mac on 16/2/19.
//  Copyright © 2016年 liujian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//1.上下文
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
//2.数据模型
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
//3.持久化存储协调者
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

