#import "Utilities.h"

@implementation Utilities
+ (UIColor *)colorWithHexString:(NSString*)hex {
    NSString *reductedString = [hex stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if ([reductedString length] == 3) {
        reductedString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
        [reductedString substringWithRange:NSMakeRange(0, 1)],[reductedString substringWithRange:NSMakeRange(0, 1)],
        [reductedString substringWithRange:NSMakeRange(1, 1)],[reductedString substringWithRange:NSMakeRange(1, 1)],
        [reductedString substringWithRange:NSMakeRange(2, 1)],[reductedString substringWithRange:NSMakeRange(2, 1)]];
    }

    if ([reductedString length] == 6) {
        reductedString = [reductedString stringByAppendingString:@"ff"];
    }

    unsigned int baseValue;
    [[NSScanner scannerWithString:reductedString] scanHexInt:&baseValue];
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}
@end