#import "imsghue.h"

NSUserDefaults *preferences;

static bool isEnabled() {
    if (!preferences) return false;
    return [preferences boolForKey:@"isEnabled"];
}

static bool initPreferences() {
    // TODO: improve error catching
    int result = libSandy_applyProfile("libSandyPrefs");

    if (result == kLibSandySuccess) {
        NSString *suiteName = [NSString stringWithFormat:@"/var/mobile/Library/Preferences/%@.plist", BUNDLE_ID];
        preferences = [[NSUserDefaults alloc] initWithSuiteName:suiteName];
    } else {
        NSLog(@"%@: Applying libSandy profile failed.", result == kLibSandyErrorRestricted ? @"kLibSandyErrorRestricted" : @"kLibSandyErrorXPCFailure");
    }

    return result == kLibSandySuccess;
}

%group main
    %hook CKUITheme
        -(NSArray *)blue_balloonColors {
            if (!isEnabled()) return %orig;
            return [[NSArray alloc] initWithObjects:
                                            [UIColor colorWithRed:1.00 green:0.50 blue:0.50 alpha:1], nil];
        }
    %end
%end

%ctor {
    initPreferences();
    %init(main);
}