#import "IMHRootListController.h"

@implementation IMHRootListController {
    NSUserDefaults *preferences;
    IMHPreferenceObserver *enableObserver;
    IMHPreferenceObserver *primaryColorObserver;
}

- (NSArray *)specifiers {
    if (!_specifiers) {
        _specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
    }

    return _specifiers;
}

- (instancetype)init {
    self = [super init];

    preferences = [[NSUserDefaults alloc] initWithSuiteName:BUNDLE_ID];
    enableObserver = [[IMHPreferenceObserver alloc] initWithKey:@"isEnabled" withChangeHandler:^() {
        //TODO: Handle blurring of components
    }];
    primaryColorObserver = [[IMHPreferenceObserver alloc] initWithKey:@"primaryColor" withChangeHandler:^() {
        //TODO: Research whether here would be a good place to try and somehow refresh the message bubbles to show color changes.
    }];
    
    return self;
}

@end