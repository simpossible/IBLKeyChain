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
 type common des is useable in the item
 这个模式支持的key 额外还有 isInvisible  isNegetive
 */
@interface IBLKeyChainGPItem : IBLKeyChainItem

/**
 账号
 mainkey 有这个值说明当前的字段属于主键
 */
@property (nonatomic, copy) NSString * itemAccount;


/**
 服务器标识，地址
 */
@property (nonatomic, copy) NSString * itemService;


/**
 mainkey 有这个值说明当前的字段属于主键
 */
@property (nonatomic, copy) NSString * itemGeneric;

@property (nonatomic, copy) NSString * itemInvisible;


/**
 值，这个可以通过 update 函数进行更新。其他的创建的时候就已经指定了。
 */
@property (nonatomic, copy) NSData * itemValueData;


@end
