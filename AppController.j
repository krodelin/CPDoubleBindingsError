/*
 * AppController.j
 * CPDoubleBindingsError
 *
 * Created by Udo Schneider on December 16, 2013.
 * Copyright 2013, Krodelin Software All rights reserved.
 */

@import <Foundation/Foundation.j>
@import <AppKit/AppKit.j>

@import "ModelController.j"

@implementation AppController : CPObject
{
    @outlet CPWindow    theWindow;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
}

- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things.

    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullPlatformWindow:YES];
}

- (@action)openArrayBindingCib:(id)sender
{
	[[[ModelController alloc] initWithWindowCibName:@"ArrayBindings"] showWindow:self];
}

- (@action)openMixedCib:(id)sender
{
	[[[ModelController alloc] initWithWindowCibName:@"MixedBindings"] showWindow:self];
}

- (@action)openObjectCib:(id)sender
{
	[[[ModelController alloc] initWithWindowCibName:@"ObjectBindings"] showWindow:self];
}



@end
