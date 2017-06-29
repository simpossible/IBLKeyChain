//
//  IBLKeyChainAccessor.h
//  IBLKeyChian
//
//  Created by simpossible on 2017/6/28.
//  Copyright © 2017年 Ahead. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IBLKeyChainItem.h"


/**
 keychain 是可以存储 5种类型的数据
 五种不同的 acce

 - IBLKeyAccessorTypePassword: 密码
 - IBLKeyAccessorTypeInternetPassword: 网络密码
 - IBLKeyAccessorTypeCer: 证书
 - IBLKeyAccessorTypeIdentity: <#IBLKeyAccessorTypeIdentity description#>
 - IBLKeyAccessorTypeKey: <#IBLKeyAccessorTypeKey description#>
 */
typedef NS_ENUM(NSUInteger,IBLKeyAccessorType) {
    IBLKeyAccessorTypePassword,
    IBLKeyAccessorTypeInternetPassword,
    IBLKeyAccessorTypeCer,
    IBLKeyAccessorTypeIdentity,
    IBLKeyAccessorTypeKey,
};

typedef NS_ENUM(NSUInteger,IBLKeyChainCode) {
    IBLKeyChainCodeOk,
IBLKeyChainStoreError,
};


typedef void (^IBLAccessResult)(NSDictionary *result) ;

@interface IBLKeyChainAccessor : NSObject

+ (instancetype)defaultAccessor;


- (IBLKeyChainCode)storeItem:(IBLKeyChainItem *)item;


@end
