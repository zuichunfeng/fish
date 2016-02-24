//
//  People+CoreDataProperties.h
//  CoreData_01
//
//  Created by mac on 16/2/19.
//  Copyright © 2016年 liujian. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "People.h"

NS_ASSUME_NONNULL_BEGIN

@interface People (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *age;
@property (nullable, nonatomic, retain) NSNumber *sex;

@end

NS_ASSUME_NONNULL_END
