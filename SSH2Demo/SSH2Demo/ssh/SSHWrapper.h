#import <Foundation/Foundation.h>


@interface SSHWrapper : NSObject {

}

- (void)connectToHost:(NSString *)host port:(int)port user:(NSString *)user password:(NSString *)password error:(NSError **)error;
- (void)closeConnection;
- (NSString *)executeCommand:(NSString *)command error:(NSError **)error;

@end
