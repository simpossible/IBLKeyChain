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
    
    if (self.itemSecurityDomain) {
        [dic setObject:self.itemSecurityDomain forKey:(id)kSecAttrSecurityDomain];
    }
    
    
    if (self.itemServer) {
        [dic setObject:self.itemServer forKey:(id)kSecAttrServer];
    }
    
    if (self.itemProtocol) {
        [dic setObject:self.itemProtocol forKey:(id)kSecAttrProtocol];
    }
    
    
    if (self.itemAuthenticationType) {
        [dic setObject:self.itemAuthenticationType forKey:(id)kSecAttrAuthenticationType];
    }
    
    
    if (self.itemValueData) {
        [dic setObject:self.itemValueData forKey:(id)kSecValueData];
    }
    
    if (self.accessGroup) {
        [dic setObject:self.accessGroup forKey:(id)kSecAttrAccessGroup];
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
    }
}
@end
