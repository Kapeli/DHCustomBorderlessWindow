#import "DHCustomView.h"

@implementation DHCustomView

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];
    
//    just for debugging
//    [[NSColor redColor] set];
//    NSRectFill(dirtyRect);
}

- (void)mouseDragged:(NSEvent *)theEvent
{
    // Taken from InAppStoreWindow
    // Basically, this causes the window to be movable by background
    
    NSWindow *window = [self window];
    NSPoint where = [window convertBaseToScreen:[theEvent locationInWindow]];
    
    NSPoint origin = [window frame].origin;
    while ((theEvent = [NSApp nextEventMatchingMask:NSLeftMouseDownMask | NSLeftMouseDraggedMask | NSLeftMouseUpMask untilDate:[NSDate distantFuture] inMode:NSEventTrackingRunLoopMode dequeue:YES]) && ([theEvent type] != NSLeftMouseUp)) {
        @autoreleasepool {
            NSPoint now = [window convertBaseToScreen:[theEvent locationInWindow]];
            origin.x += now.x - where.x;
            origin.y += now.y - where.y;
            [window setFrameOrigin:origin];
            where = now;
        }
    }
}

- (void)mouseDown:(NSEvent *)theEvent
{
    // needed so that we don't forward the event, allowing the hidden
    // window buttons to intercept them
}

- (void)mouseUp:(NSEvent *)theEvent
{
    // needed so that we don't forward the event, allowing the hidden
    // window buttons to intercept them
}

@end
