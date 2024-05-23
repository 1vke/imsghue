#import <Foundation/Foundation.h>
#import <UIKit/UIColor.h>
// %hook CKGradientView
// -(NSArray *) colors {
//     return [[NSArray alloc] initWithObjects:
//                                     [UIColor colorWithRed:1.00 green:0.00 blue:0.00 alpha:1],
//                                     [UIColor colorWithRed:1.00 green:0.20 blue:0.20 alpha:1],
//                                     [UIColor colorWithRed:0.20 green:1.00 blue:.20 alpha:1],
//                                     [UIColor colorWithRed:0.20 green:0.20 blue:1.00 alpha:1], nil];
// }
// %end
%hook CKBalloonView
-(char) color {
    return 3;
}
%end
%hook CKColoredBalloonView
// -(bool) wantsGradient {
//     return true;
// }
%end