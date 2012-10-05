#import "DHCustomWindow.h"
#import "DHCustomView.h"

@implementation DHCustomWindow

- (void)awakeFromNib
{
    NSView *themeFrame = [[self contentView] superview];
    NSView *entireView = [[[DHCustomView alloc] initWithFrame:NSZeroRect] autorelease];
    
    [self setOpaque:NO];
    [self setBackgroundColor:[NSColor clearColor]];
    [self setStyleMask:self.styleMask|NSTexturedBackgroundWindowMask];
    [self setHasShadow:NO];
    
    [entireView setFrame:[[self contentView] frame]];
    NSArray *subviews = [NSArray arrayWithObject:self.contentView];
    NSView *emptyView = [[[NSView alloc] initWithFrame:NSZeroRect] autorelease];
    [(NSView*)self.contentView setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
    [emptyView setFrame:[self.contentView frame]];
    [self setContentView:emptyView];
    [entireView setSubviews:subviews];
    [entireView setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
    NSRect themeFrameRect = [themeFrame frame];
    for(NSView *subview in [themeFrame subviews])
    {
        [subview setAlphaValue:0.0f];
    }
    [entireView setFrame:themeFrameRect];
    [themeFrame addSubview:entireView];
}

- (void)setTitle:(NSString *)aString
{
    // intercept this if you want a title...
}


@end