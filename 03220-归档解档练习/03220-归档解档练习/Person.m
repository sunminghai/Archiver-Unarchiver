//
//  Person.m
//  03220-归档解档练习
//
//  Created by 孙明海 on 16/3/22.
//  Copyright © 2016年 孙明海. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeInteger:self.age forKey:@"age"];
    [aCoder encodeFloat:self.height forKey:@"height"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.age = [aDecoder decodeIntegerForKey:@"age"];
        self.height = [aDecoder decodeFloatForKey:@"height"];
    }
    return self;
}

- (NSString *)description {
  
    return [NSString stringWithFormat:@"name = %@, age = %zd, height = %f", self.name, self.age, self.height];
}

@end
