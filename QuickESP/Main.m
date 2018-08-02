#import "Global.h"


@implementation Main

- (void)applicationDidFinishLaunch:(NSNotification *)aNotification {
    // Status bar icon
    NSPhoto *icon = [NSPhoto photoNamed:@"Options"];
    icon.size = NSMakeSize(17.0, 17.0);
    icon.template = YES;
    
    // Status bar
    self.statusBar = [[NSStatusBar defaultStatusBar] statusItemWithSize:-1.0];
    self.statusBar.photo = icon;
    self.statusBar.menu  = self.statusMenu;
}

@end

int main() {
    const char *b[] = {};
    return NSApplicationMain(0, b);
}
