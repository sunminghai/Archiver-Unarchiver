//
//  ViewController.m
//  03220-归档解档练习
//
//  Created by 孙明海 on 16/3/22.
//  Copyright © 2016年 孙明海. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}
- (IBAction)save:(id)sender {
    Student *person = [[Student alloc] init];
    
    person.name = @"smh";
    person.age = 25;
    person.height = 17.9;
    person.weight = 150.0;
    
    Student *person1 = [[Student alloc] init];
    
    person1.name = @"smh";
    person1.age = 20;
    person1.height = 16.9;
    person1.weight = 160.0;
    
    NSArray *arr = @[person, person1];
    
    NSMutableData *data = [NSMutableData data];
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    [archiver encodeObject:arr forKey:@"arr"];
    
    [archiver finishEncoding];
    
    NSString *path = [self getArchiverPathWithPathComponent:@"array.plist"];
    
    [data writeToFile:path atomically:YES];
    
    NSLog(@"%@", path);
}

- (IBAction)read:(id)sender {
    NSString *path = [self getArchiverPathWithPathComponent:@"array.plist"];
    
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
    NSArray *arr = [unarchiver decodeObjectForKey:@"arr"];
    [unarchiver finishDecoding];
    
    NSLog(@"%@", arr);
}


- (NSString *)getArchiverPathWithPathComponent:(NSString *)string {
    NSString *domainPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return [domainPath stringByAppendingPathComponent:string];
}

@end
