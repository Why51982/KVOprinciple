//
//  Student.h
//  KVO
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/19.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    @public
    NSString *_name;
}

@property (nonatomic, copy) NSString *name;

@end
