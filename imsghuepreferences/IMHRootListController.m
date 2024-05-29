#import <Foundation/Foundation.h>
#import "IMHRootListController.h"

@implementation IMHRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

@end
