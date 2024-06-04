#import <Foundation/Foundation.h>
#import "IMHRootListController.h"
#import "../../imsghue.h"

@implementation IMHRootListController {
    NSUserDefaults *preferences;
    IMHPreferenceObserver *enableObserver;
    - (NSArray *)specifiers {
        if (!_specifiers) {
            _specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
        }

        return _specifiers;
    };
}

- (instancetype)init {
    self = [super init];

    preferences = [[NSUserDefaults alloc] initWithSuiteName:BUNDLE_ID];
    enableObserver = [[IMHPreferenceObserver alloc] initWithKey:@"isEnabled"];
    
    return self;
}
