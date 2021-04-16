//
//  ViewController.m
//  HashTest
//
//  Created by ZP on 2021/4/16.
//

#import "ViewController.h"
#import "NSString+Hash.h"

static NSString *kSaltKey = @"Hotpot";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //string
    NSString *message = @"HotpotCat";
    NSString *key = @"key";
    NSLog(@"string md5: %@",[message md5String]);
    NSLog(@"string sha1: %@",[message sha1String]);
    NSLog(@"string sha256: %@",[message sha256String]);
    NSLog(@"string sha512: %@",[message sha512String]);
    NSLog(@"string hmac md5: %@",[message hmacMD5StringWithKey:key]);
    NSLog(@"string hmac sha1: %@",[message hmacSHA1StringWithKey:key]);
    NSLog(@"string hmac sha256: %@",[message hmacSHA256StringWithKey:key]);
    NSLog(@"string hmac sha512: %@",[message hmacSHA512StringWithKey:key]);

    //文件
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"message" ofType:@"txt"];
    NSLog(@"file md5: %@",[filePath fileMD5Hash]);
    NSLog(@"file sha1: %@",[filePath fileSHA1Hash]);
    NSLog(@"file sha256: %@",[filePath fileSHA256Hash]);
    NSLog(@"file sha512: %@",[filePath fileSHA512Hash]);
}


@end
