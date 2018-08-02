#import "Global.h"


@implementation Main

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.statusBar = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    //self.statusBar.title = @"G";
    
    NSImage *image = [NSImage imageNamed:@"Options"];
    image.size = NSMakeSize(17.0, 17.0);
    image.template = YES;
    self.statusBar.image = image;
    self.statusBar.menu = self.statusMenu;
    self.statusBar.highlightMode = YES;
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
