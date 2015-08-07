//
//  Person.h
//  Person
//
//  Created by Ray Zane on 8/7/15.
//  Copyright (c) 2015 Ray Zane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (readonly) NSString *name;

- (id)initWithName:(NSString *) name;

- (NSString *)greet: (NSString *) message;

@end
