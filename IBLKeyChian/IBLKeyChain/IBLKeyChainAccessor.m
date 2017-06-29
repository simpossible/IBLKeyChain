//
//  IBLKeyChainAccessor.m
//  IBLKeyChian
//
//  Created by simpossible on 2017/6/28.
//  Copyright © 2017年 Ahead. All rights reserved.
//

#import "IBLKeyChainAccessor.h"
#import <Security/Security.h>

@implementation IBLKeyChainAccessor


+ (instancetype)defaultAccessor {
    static IBLKeyChainAccessor *accessor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        accessor = [[IBLKeyChainAccessor alloc] init];
    });
    return accessor;
}



- (OSStatus)storeItem:(IBLKeyChainItem *)item {
    
    NSMutableDictionary *query = [item queryDic];
    [query setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnAttributes];
    
    NSDictionary *dic = nil;
    CFTypeRef result = (__bridge CFTypeRef)dic;
    OSStatus statu =  SecItemAdd((__bridge CFDictionaryRef)query,&result);
    if (statu == noErr) {
        CFDictionaryRef cdic = (CFDictionaryRef)result;
        NSDictionary *rdic = (__bridge NSDictionary *)(cdic);
        [item genParamsWithDictionar:rdic];
    }
    
    return statu;
}




@end
