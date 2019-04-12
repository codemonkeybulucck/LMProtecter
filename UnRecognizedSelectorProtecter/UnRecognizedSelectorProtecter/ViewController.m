//
//  ViewController.m
//  UnRecognizedSelectorProtecter
//
//  Created by lemon on 2019/4/12.
//  Copyright © 2019年 Lemon. All rights reserved.
//

#import "ViewController.h"
#import "LMPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
}


- (void)test{
    
    id instance = [[NSNull null] performSelector:@selector(selector1)];
    [instance performSelector:@selector(selector2)];
    [instance substringFromIndex:0];
    
    
    LMPerson *person = [[LMPerson alloc]init];
    [person sayHi];
    [person eat];
}


@end
