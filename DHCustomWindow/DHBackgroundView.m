#import "DHBackgroundView.h"

@implementation DHBackgroundView

- (void)awakeFromNib
{
    [self setWantsLayer:YES];
}

- (void)drawRect:(NSRect)dirtyRect
{
    NSRect entireRect = NSInsetRect([self bounds], 3, 3);
    NSColor *shadow = [NSColor colorWithCalibratedRed:0.46f green:0.50f blue:0.60f alpha:0.8f];
    NSBezierPath *shadowPath = [NSBezierPath bezierPathWithRoundedRect:entireRect xRadius:10 yRadius:10];
    [shadowPath setLineWidth:5.0f];
    [shadow setStroke];
    [shadowPath stroke];
    
    NSRect innerRect = NSInsetRect(entireRect, 2, 2);
    NSBezierPath *innerPath = [NSBezierPath bezierPathWithRoundedRect:innerRect xRadius:5 yRadius:5];
    [innerPath setLineWidth:2.0f];
    [[NSColor colorWithCalibratedRed:0.42f green:0.45f blue:0.54f alpha:1.00f] setStroke];
    [innerPath stroke];
}

@end
