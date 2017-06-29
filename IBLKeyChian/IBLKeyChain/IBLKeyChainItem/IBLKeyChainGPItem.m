//
//  IBLKeyChainGPItem.m
//  IBLKeyChian
//
//  Created by simpossible on 2017/6/28.
//  Copyright © 2017年 Ahead. All rights reserved.
//

#import "IBLKeyChainGPItem.h"

@implementation IBLKeyChainGPItem

- (NSMutableDictionary *)queryDic {
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    if (self.itemAccount) {
        [dic setObject:self.itemAccount forKey:(id)kSecAttrAccount];
    }
    
    if (self.itemService) {
        [dic setObject:self.itemService forKey:(id)kSecAttrService];
    }
    
    if (self.itemGeneric) {
        [dic setObject:self.itemGeneric forKey:(id)kSecAttrGeneric];
    }
    
    if (self.itemValueData) {
        [dic setObject:self.itemValueData forKey:(id)kSecValueData];
    }
    
    if (self.accessGroup) {
        [dic setObject:self.accessGroup forKey:(id)kSecAttrAccessGroup];
    }
    if (self.itemType) {
        [dic setObject:self.itemType forKey:(id)kSecAttrType];
    }
    if (self.itemComment) {
        [dic setObject:self.itemComment forKey:(id)kSecAttrComment];
    }
    if (self.itemDescription) {
        [dic setObject:self.itemDescription forKey:(id)kSecAttrDescription];
    }
    
    if (self.itemInvisible) {
        [dic setObject:self.itemInvisible forKey:(id)kSecAttrIsInvisible];
    }
    
    [dic setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    return dic;
}


- (void)genParamsWithDictionar:(NSDictionary *)dic {
    if (dic) {
        self.itemAccount = [dic objectForKey:(id)kSecAttrAccount];
        self.itemCreateDate = [dic objectForKey:(id)kSecAttrCreationDate];
        self.itemModifyDate = [dic objectForKey:(id)kSecAttrModificationDate];
        self.accessGroup = [dic objectForKey:(id)kSecAttrAccessGroup];
        self.itemSynchronizable = [dic objectForKey:(id)kSecAttrSynchronizable];
//        NSString *sha = [dic objectForKey:(id)kSecSharedPassword];
        self.itemService = [dic objectForKey:(id)kSecAttrService];
        self.itemGeneric = [dic objectForKey:(id)kSecAttrGeneric];
        self.itemType = [dic objectForKey:(id)kSecAttrType];
        self.itemDescription = [dic objectForKey:(id)kSecAttrDescription];
        self.itemComment = [dic objectForKey:(id)kSecAttrComment];
        self.itemInvisible = [dic objectForKey:(id)kSecAttrIsInvisible];
    }
}
@end
