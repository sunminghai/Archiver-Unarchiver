//
//  Student.m
//  03220-归档解档练习
//
//  Created by 孙明海 on 16/3/22.
//  Copyright © 2016年 孙明海. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [super encodeWithCoder:aCoder];
    [aCoder encodeFloat:self.weight forKey:@"weight"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.weight = [aDecoder decodeFloatForKey:@"weight"];
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, weight = %f", [super description], self.weight];
}

@end
