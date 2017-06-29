//
//  IBLKeyChainGPItem.h
//  IBLKeyChian
//
//  Created by simpossible on 2017/6/28.
//  Copyright © 2017年 Ahead. All rights reserved.
//



#import "IBLKeyChainItem.h"


/**
 通用密码
 kSecClassGenericPassword
 数据库的key 为 account+service
 */
@interface IBLKeyChainGPItem : IBLKeyChainItem

/**
 账号
 
 */
@property (nonatomic, copy) NSString * itemAccount;


/**
 服务器标识，地址
 */
@property (nonatomic, copy) NSString * itemService;

@property (nonatomic, copy) NSString * itemGeneric;

@property (nonatomic, copy) NSString * itemSecurityDomain;

@property (nonatomic, copy) NSString * itemServer;

@property (nonatomic, copy) NSString * itemProtocol;

@property (nonatomic, copy) NSString * itemAuthenticationType;

@property (nonatomic, copy) NSData * itemValueData;

@end
