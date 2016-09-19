//
//  Student.m
//  KVO
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/19.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)setName:(NSString *)name {
    _name = name;
    
    NSLog(@"set方法被调用了");
}

@end
