//
//  IBLKeyChainItem.h
//  IBLKeyChian
//
//  Created by simpossible on 2017/6/28.
//  Copyright © 2017年 Ahead. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface IBLKeyChainItem : NSObject

#if TARGET_OS_OSX
@property (nonatomic, copy) NSString * access;
#endif

/**一个item 有一个所属的 accessGroup 如果 你的app 有这个accessGroup 你就有访问这个item 的权限*/
@property (nonatomic, copy) NSString * accessGroup;

@property (nonatomic, copy) NSString * accessAble;

@property (nonatomic, copy) NSString * accessControl;


/**
 是否同步
 icould 多设备同步
 */
@property (nonatomic, copy) NSString * itemSynchronizable;


/**
 创建日期
 */
@property (nonatomic, copy) NSString * itemCreateDate;


/**
 修改的日期
 */
@property (nonatomic, copy) NSString * itemModifyDate;

@property (nonatomic, copy) NSString * itemDescription;

@property (nonatomic, copy) NSString * itemComment;


/**
 创建者
 */
@property (nonatomic, copy) NSString * itemCreator;

@property (nonatomic, copy) NSString * itemType;

@property (nonatomic, copy) NSString * itemLabel;

@property (nonatomic, copy) NSString * itemIsNgative;

@property (nonatomic, copy) NSString * itemSyncViewHint;


@property (nonatomic, strong) NSMutableDictionary *queryDIc;


- (NSMutableDictionary *)queryDic;

- (NSString *)classType;

- (void)genParamsWithDictionar:(NSDictionary *)dic;

@end
