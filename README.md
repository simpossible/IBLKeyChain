# IBLKeyChain

实现iOS keychain 的存储的API。
牺牲易用性。增加可理解性，以及可扩展性。

1.通用密码的存储。
使用 IBLKeyChainGPItem 

 IBLKeyChainGPItem *gpItem = [[IBLKeyChainGPItem alloc] init];
    gpItem.itemAccount = self.account.text;
    gpItem.itemValueData = [self.password.text dataUsingEncoding:NSUTF8StringEncoding];
    gpItem.itemService = self.service.text;
    gpItem.itemLabel = self.label.text;
    gpItem.itemGeneric = @"genenenen";

    OSStatus a =  [[IBLKeyChainAccessor defaultAccessor] storeItem:gpItem];

    如果存储成功。item 的其他值会被赋值