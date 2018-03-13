//
//  ViewController.m
//  SSH2Demo
//
//  Created by yangqianhua on 2018/3/12.
//  Copyright © 2018年 yangqianhua. All rights reserved.
//

#import "ViewController.h"
#import "SSHWrapper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SSHWrapper* sshWrapper = [[SSHWrapper alloc] init];
    NSError* error;

    [sshWrapper connectToHost:@"0.0.0.0" port:22 user:@"root" password:@"123" error:&error];

    if(error){
        NSLog(@"出错");
    }else{
        NSLog(@"未出错");
        NSString * result = [sshWrapper executeCommand:@"ls -al" error:nil];
        NSLog(@"---%@",result);
        
        result = [sshWrapper executeCommand:@"df -h" error:nil];
        NSLog(@"---%@",result);
    
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
