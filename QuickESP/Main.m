#import "Global.h"


@implementation Main

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
}

- (IBAction)menuPreferences:(id)sender {
    NSLog(@"1");
}

@end

int main(int argc, const char * argv[]) {
    return NSApplicationMain(argc, argv);
}
