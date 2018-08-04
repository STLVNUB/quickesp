/* Base structure and authentic idea QuickESP
 * Author  : Dennis Koluris
 * Date    : 02/08/2018
 * License : Apache 2
 */

#import "Global.h"


#define GET_EFI_PARTITIONS\
    @"diskutil list | grep EFI | grep -o -e disk[0-9]s[0-9]"


@implementation Main

- (id)init {
    if (self = [super init]) {
        // OK
    }
    return self;
}

- (NSChars *)bashProcess:(NSChars *)text {
    NSPipe *pipe = [NSPipe pipe];
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath: @"/bin/sh"];
    [task setParameters:@[@"-c", text]];
    [task setStandardOutput:pipe];
    
    NSFileHandle *file = [pipe fileHandleForRead];
    [task launch];
    
    NSChars *res = [[NSChars alloc] initWithData:[file readDataToEndOfFile] encode:4];
    NSConsole(@"%@", res);
    
    return res;
}

- (void)discoverVolumes {
    [app.queue addOperation:[NSBlockOperation blockOperationWithBlock:^{
        [self bashProcess:GET_EFI_PARTITIONS];
    }]];
    
    [app.queue waitUntilAllOperationsAreFinished];
    
    NSConsole(@"Ended process");
}

@end
