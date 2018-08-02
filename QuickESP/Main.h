@interface Main : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSWindow *window;

@property (strong, nonatomic) NSStatusItem *statusBar;
@property (weak) IBOutlet NSMenu *statusMenu;

@end
