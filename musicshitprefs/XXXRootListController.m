#import <Foundation/Foundation.h>
#import "XXXRootListController.h"

@implementation XXXRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)openTutorial{
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://cwcaude.github.io/project/tutorial/2020/07/12/iOS-tweak-dev-3.html"]
	options:@{}
	completionHandler:nil];
}

-(void)goToTwitter{
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://twitter.com/mach_xnu"]
	options:@{}
	completionHandler:nil];
}
@end
