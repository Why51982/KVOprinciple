//
//  ViewController.m
//  KVO
//
//  Created by CHEUNGYuk Hang Raymond on 16/9/14.
//  Copyright © 2016年 CHEUNGYuk Hang Raymond. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@property (nonatomic, strong) Student *student;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Student *student = [[Student alloc] init];
    self.student = student;
    
    //利用KVO监听Person类的name属性变化
    [student addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
}

//收到属性变更的通知，就会调用此方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    
    NSLog(@"%@", self.student.name);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    static NSInteger i = 0;
    //每点击一次屏幕i就会+1
    NSString *name = [NSString stringWithFormat:@"Ocean - %zd", i++];
    self .student.name = name;
    //直接通过成员属性来修改name，不会调用其set方法
//    self.student -> _name = name;
}

@end




//    self.student -> _name = name;
// KVO的本质就是监听一个对象有没有调用set方法
