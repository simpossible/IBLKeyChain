//
//  IBLKeyChainIPItem.h
//  IBLKeyChian
//
//  Created by simpossible on 2017/6/28.
//  Copyright © 2017年 Ahead. All rights reserved.
//

#import "IBLKeyChainItem.h"

/**
 kSecClassInternetPassword
 */
@interface IBLKeyChainIPItem : IBLKeyChainItem

@property (nonatomic, copy) NSString * itemPort;

@property (nonatomic, copy) NSString * itemPath;
@end
