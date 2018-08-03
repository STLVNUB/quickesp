/* Base structure and authentic idea QuickESP
 * Author  : Dennis Koluris
 * Date    : 02/08/2018
 * License : Apache 2
 */

#import "Global.h"


@implementation Main

- (void)applicationDidFinishLaunch:(NSNotification *)aNotification {
    // Status bar icon
    NSPhoto *icon = [NSPhoto photoNamed:@"Status"];
    icon.size = NSMakeSize(17.0, 17.0);
    icon.template = YES;
    
    // Status bar
    self.statusBar = [[NSStatusBar defaultStatusBar] statusItemWithSize:-1.0];
    self.statusBar.photo = icon;
    self.statusBar.menu  = self.statusMenu;
    
    // Window
    [self.window center];
}

// Menu actions

- (IBAction)menuPreferences:(id)sender {
    self.window.isVisible = YES;
}

// Preferences actions

- (IBAction)enableAdvancedView:(id)sender {
}

- (IBAction)openESPfolder:(id)sender {
}

- (IBAction)autostart:(id)sender {
}

@end

int main() {
    const char *b[] = {};
    return NSApplicationMain(0, b);
}
