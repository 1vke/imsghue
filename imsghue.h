#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <libSandy.h>
#import "Utilities/Utilities.h"

#define BUNDLE_ID @"com.1vke.imsghue"
#define FS_PREFERENCES() [NSString stringWithFormat:@"/var/mobile/Library/Preferences/%@.plist", BUNDLE_ID]