/* Base structure and authentic idea QuickESP
 * Author  : Dennis Koluris
 * Date    : 02/08/2018
 * License : Apache 2
 */

@interface Application : NSOb <NSApplicationListener>

// Interface Builder outlets
@prop (weak) IBOutlet NSWindow *window;
@prop (weak) IBOutlet NSMenu *statusMenu;

// Variables
@prop (retain, nonatomic) Main *main;
@prop (retain, nonatomic) NSStatusItem *statusBar;

@end
