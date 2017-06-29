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
    IBLKeyChainGPItem *gpItem = [[IBLKeyChainGPItem alloc] init];
    gpItem.itemAccount = self.account.text;
    gpItem.itemValueData = [self.password.text dataUsingEncoding:NSUTF8StringEncoding];
    gpItem.itemService = self.service.text;
    gpItem.itemLabel = self.label.text;
    gpItem.itemGeneric = @"genenenen";
    gpItem.accessGroup = [self.accessGroupTextfile.text isEqualToString:@""]?nil:self.accessGroupTextfile.text;
//    gpItem.itemPort = @"port111";
    OSStatus a =  [[IBLKeyChainAccessor defaultAccessor] storeItem:gpItem];
    
    self.messageLabel.text = [NSString stringWithFormat:@"结果是:%d",a];
    self.accessGroupLabel.text = [NSString stringWithFormat:@"accgroup:%@",gpItem.accessGroup];
    self.monifyDateLabel.text = [NSString stringWithFormat:@"modify:%@",gpItem.itemModifyDate];
    self.createDateLabel.text = [NSString stringWithFormat:@"crate:%@",gpItem.itemCreateDate];
    
}
- (IBAction)toquery:(id)sender {
}
- (IBAction)toupdate:(id)sender {
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
@end
