/* Base structure and authentic idea QuickESP
 * Author  : Dennis Koluris
 * Date    : 02/08/2018
 * License : Apache 2
 */

#import "Global.h"


@implementation Menu

- (void)awakeFromNib {
    self.member = self;
}

- (void)menuWillOpen:(NSMenu *)menu {
    [app.main discoverVolumes];
}

// Menu actions

- (IBAction)clickPreferences:(id)sender {
    app.window.isVisible = YES;
}

@end
