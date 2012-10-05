#import "DHAppDelegate.h"

@implementation DHAppDelegate

@synthesize webView;

- (void)awakeFromNib
{
    [webView setMainFrameURL:@"https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/Foundation/Classes/NSString_Class/Reference/NSString.html"];
}

@end
