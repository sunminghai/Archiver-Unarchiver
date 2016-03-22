//
//  Person.h
//  03220-归档解档练习
//
//  Created by 孙明海 on 16/3/22.
//  Copyright © 2016年 孙明海. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Person : NSObject <NSCoding>

@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, assign) CGFloat height;

@end
