//
//  ShairportAppDelegate.h
//  Shairport
//
//  Created by nfo on 4/19/11.
//  No copyright.
//

#import <Cocoa/Cocoa.h>

@interface ShairportAppDelegate : NSObject <NSApplicationDelegate> {
    NSStatusItem *statusItem;
    NSImage *statusImageOn;
    NSImage *statusImageOff;
    NSTask *shairport;
}

// @property (assign) IBOutlet NSStatusItem *statusItem;
@property (assign) NSStatusItem *statusItem;
@property (assign) NSImage *statusImageOn;
@property (assign) NSImage *statusImageOff;
@property (assign) NSTask *shairport;

@end
