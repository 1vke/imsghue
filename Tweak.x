#import "imsghue.h"

NSUserDefaults *preferences;

static bool isEnabled() {
    if (!preferences) return false;
    return [preferences boolForKey:@"isEnabled"];
}

static bool initPreferences() {
    //TODO: improve error catching
    int result = libSandy_applyProfile("libSandyPrefs");

    if (result == kLibSandySuccess) {
        // NSString *suiteName = FS_PREFERENCES(); 
        preferences = [[NSUserDefaults alloc] initWithSuiteName:FS_PREFERENCES()];
    } else {
        NSLog(@"%@: Applying libSandy profile failed.", result == kLibSandyErrorRestricted ? @"kLibSandyErrorRestricted" : @"kLibSandyErrorXPCFailure");
    }

    return result == kLibSandySuccess;
}

%group main
    %hook CKUITheme
        -(NSArray *)blue_balloonColors {
            if (!isEnabled()) return %orig;
            NSString *color = [preferences stringForKey:@"primaryColor"];
            return [[NSArray alloc] initWithObjects:
                                            color ? [Utilities colorWithHexString:color] : [UIColor systemRedColor], nil];
        }
        -(NSArray *)green_balloonColors {
            if (!isEnabled()) return %orig;
            NSString *color = [preferences stringForKey:@"primaryColor"];
            return [[NSArray alloc] initWithObjects:
                                            color ? [Utilities colorWithHexString:color] : [UIColor systemRedColor], nil];
        }
    %end
%end

%ctor {
    if(initPreferences()) %init(main)
}