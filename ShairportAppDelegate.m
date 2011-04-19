//
//  ShairportAppDelegate.m
//  Shairport
//
//  Created by nfo on 4/19/11.
//  No copyright.
//

// No Dock icon: LSUIElement in info.plist
// http://stackoverflow.com/questions/620841/how-to-hide-the-dock-icon


#import "ShairportAppDelegate.h"

@implementation ShairportAppDelegate

@synthesize statusItem;
@synthesize shairport;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    /* Setup *statusItem */
    NSStatusBar *statusbar = [NSStatusBar systemStatusBar];
    statusItem = [statusbar statusItemWithLength:NSVariableStatusItemLength];
    [statusItem retain];
    [statusItem setTitle:@"♭"]; // ♩♪♫♬♭♮♯
    [statusItem setToolTip:@"Click to start/stop shairport.pl. Ctrl-click to quit."]; // ♩♪♫♬♭♮♯
    [statusItem setHighlightMode:YES];
    [statusItem setAction:@selector(startStopTaskOrQuit:)];
}

- (void)startStopTaskOrQuit:(NSInteger)tid {
    NSEvent *event = [NSApp currentEvent];
    // Terminate the app if it's a control-click
    // http://stackoverflow.com/questions/4565820/cocoa-right-click-nsstatusitem
    if([event modifierFlags] & NSControlKeyMask) {
        [NSApp terminate:self];
    } else {
        if([shairport isRunning]){
            // NSSound *systemSound = [NSSound soundNamed:@"Bottle"];
            // [systemSound play];

            [shairport terminate];

            [statusItem setTitle:@"♭"];
        } else {
            // NSSound *systemSound = [NSSound soundNamed:@"Morse"];
            // [systemSound play];

            shairport = [[NSTask alloc] init];
            NSString *bundlePath = [[NSBundle mainBundle] resourcePath];
            NSString *shairportPath = [NSString stringWithFormat:@"%@/%@", bundlePath, @"shairport.pl"];

            // http://stackoverflow.com/questions/412562/execute-a-terminal-command-from-a-cocoa-app
            [shairport setLaunchPath: shairportPath];
            // NSArray *arguments;
            // arguments = [NSArray arrayWithObjects: @"--apname", @"RJ", nil];
            // [shairport setArguments: arguments];
            [shairport launch];

            [statusItem setTitle:@"♫"];
        }
    }
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    [shairport terminate];
    [shairport release];
    
    [statusItem release];
}

@end
