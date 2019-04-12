//
//  LMProtecter.m
//  UnRecognizedSelectorProtecter
//
//  Created by lemon on 2019/4/12.
//  Copyright © 2019年 Lemon. All rights reserved.
//

#import "LMProtecter.h"
#import <objc/runtime.h>

@implementation LMProtecter

id protect_method_implementation(id self, SEL _cmd){
    return nil;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    //消息会转发到这里来，动态的给Sel提供一个方法的实现就👌了
    class_addMethod([self class], sel, (IMP)protect_method_implementation, "@@:");
    NSLog(@"捕获到一个unRecognized Selector = %@ 崩溃信息",NSStringFromSelector(sel));
    return YES;
}

//- (id)forwardingTargetForSelector:(SEL)aSelector{
//    return [super forwardingTargetForSelector:aSelector];
//}
//
//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
//    return [super methodSignatureForSelector:aSelector];
//}
//
//- (void)forwardInvocation:(NSInvocation *)anInvocation{
//    return [super forwardInvocation:anInvocation];
//}
//
//- (void)doesNotRecognizeSelector:(SEL)aSelector{
//    return [super doesNotRecognizeSelector:aSelector];
//}

@end
