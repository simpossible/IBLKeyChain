//
//  ViewController.m
//  IBLKeyChian
//
//  Created by simpossible on 2017/6/27.
//  Copyright © 2017年 Ahead. All rights reserved.
//

#import "ViewController.h"
#import "IBLKeyChainAccessor.h"
#import "IBLKeyChainGPItem.h"

@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *account;

@property (nonatomic, strong)IBOutlet UITextField *password;

@property (nonatomic, strong)IBOutlet UITextField *service;

@property (nonatomic, strong)IBOutlet UITextField * label;

@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *queryButton;
@property (weak, nonatomic) IBOutlet UIButton *updateButton;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UILabel *createDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *monifyDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *accessGroupLabel;
@property (weak, nonatomic) IBOutlet UITextField *accessGroupTextfile;
@property (weak, nonatomic) IBOutlet UITextField *genericFiled;

@property (weak, nonatomic) IBOutlet UITextField *serverfiled;
@property (weak, nonatomic) IBOutlet UITextField *authTypeFiled;

@property (weak, nonatomic) IBOutlet UITextField *protocolFiled;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
 
    
//    [[IBLKeyChainAccessor defaultAccessor] storeItem:gpItem result:^(NSDictionary *result) {
//        NSLog(@"hehe ");
//    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toadd:(id)sender {
    IBLKeyChainGPItem *gpItem =[self getKeychainItem];
    OSStatus a =  [[IBLKeyChainAccessor defaultAccessor] storeItem:gpItem];
    
   [self updateShowWithItem:gpItem andStatu:a];
    
}
- (IBAction)toquery:(id)sender {
    IBLKeyChainGPItem *gpItem =[self getKeychainItem];
    //    gpItem.itemPort = @"port111";
    OSStatus a =  [[IBLKeyChainAccessor defaultAccessor] queryItem:gpItem];
    
    [self updateShowWithItem:gpItem andStatu:a];
}

- (IBAction)toupdate:(id)sender {
    IBLKeyChainGPItem *gpItem =[self getKeychainItem];
   
    OSStatus a =  [[IBLKeyChainAccessor defaultAccessor] updateItem:gpItem];
    
    [self updateShowWithItem:gpItem andStatu:a];
}

- (IBLKeyChainGPItem *)getKeychainItem {
    IBLKeyChainGPItem *gpItem = [[IBLKeyChainGPItem alloc] init];
    gpItem.itemAccount = self.account.text;
    gpItem.itemValueData = [self.password.text dataUsingEncoding:NSUTF8StringEncoding];
    gpItem.itemService = self.service.text;
    gpItem.itemLabel = self.label.text;
    gpItem.accessGroup = [self.accessGroupTextfile.text isEqualToString:@""]?nil:self.accessGroupTextfile.text;
    gpItem.itemGeneric = [self.genericFiled.text isEqualToString:@""]?nil:self.genericFiled.text;
    gpItem.itemType = [self.serverfiled.text isEqualToString:@""]?nil:self.serverfiled.text;
    
    gpItem.itemComment = [self.protocolFiled.text isEqualToString:@""]?nil:self.protocolFiled.text;
    
    gpItem.itemDescription = [self.authTypeFiled.text isEqualToString:@""]?nil:self.authTypeFiled.text;
    return gpItem;
}


- (void)updateShowWithItem:(IBLKeyChainGPItem*)gpItem andStatu:(int)a {
    self.password.text = [NSString stringWithUTF8String:gpItem.itemValueData.bytes];
    self.accessGroupTextfile.text = gpItem.accessGroup;
    self.label.text = gpItem.itemLabel;
    
    self.messageLabel.text = [NSString stringWithFormat:@"结果是:%d",a];
    self.accessGroupLabel.text = [NSString stringWithFormat:@"accgroup:%@",gpItem.accessGroup];
    self.monifyDateLabel.text = [NSString stringWithFormat:@"modify:%@",gpItem.itemModifyDate];
    self.createDateLabel.text = [NSString stringWithFormat:@"crate:%@",gpItem.itemCreateDate];
    self.genericFiled.text = gpItem.itemGeneric;
    self.serverfiled.text = gpItem.itemType;
    self.protocolFiled.text = gpItem.itemComment;
    self.authTypeFiled.text = gpItem.itemDescription;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
@end
