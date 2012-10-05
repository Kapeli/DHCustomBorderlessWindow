#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface DHAppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet WebView *webView;
}

@property (assign) IBOutlet WebView *webView;

@end
