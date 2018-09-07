# SSH2Demo
iOS实现通过SSH2协议链接Linux服务器，并执行相关指令

## 使用方式<br/>

SSHWrapper* sshWrapper = [[SSHWrapper alloc] init];
NSError* error;

[sshWrapper connectToHost:@"0.0.0.0" port:22 user:@"root" password:@"123" error:&error];

if(error){//连接失败
NSLog(@"出错");
}else{ //连接成功
NSLog(@"未出错");
//执行“ls -al”执行
NSString * result = [sshWrapper executeCommand:@"ls -al" error:nil];
NSLog(@"---%@",result);

//执行“df -h”执行
result = [sshWrapper executeCommand:@"df -h" error:nil];
NSLog(@"---%@",result);
}<br/>

 执行结果：<br/>
![](https://yqh1988.oss-cn-beijing.aliyuncs.com/yqh/333333.jpg)

