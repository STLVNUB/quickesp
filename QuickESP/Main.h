@interface Main : NSOb <NSApplicationListener>

// Interface Builder outlets
@prop (weak) IBOutlet NSWindow *window;
@prop (weak) IBOutlet NSMenu   *statusMenu;

// Variables
@prop (retain, nonatomic) NSStatusItem *statusBar;

@end
