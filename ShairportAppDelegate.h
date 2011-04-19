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
    NSTask *shairport;
}

// @property (assign) IBOutlet NSStatusItem *statusItem;
@property (assign) NSStatusItem *statusItem;
@property (assign) NSTask *shairport;

@end
