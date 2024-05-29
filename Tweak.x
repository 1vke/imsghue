#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook CKUITheme
-(NSArray *)blue_balloonColors {
    return [[NSArray alloc] initWithObjects:
                                    [UIColor colorWithRed:1.00 green:0.20 blue:0.20 alpha:1],
                                    [UIColor colorWithRed:0.20 green:0.20 blue:1.00 alpha:1], nil];;
}
-(NSArray *)blue_unfilledBalloonColors {
    return [[NSArray alloc] initWithObjects:
                                    [UIColor colorWithRed:1.00 green:0.20 blue:0.20 alpha:1],
                                    [UIColor colorWithRed:0.20 green:0.20 blue:1.00 alpha:1], nil];;
}
-(NSArray *)green_balloonColors {
    return [[NSArray alloc] initWithObjects:
                                    [UIColor colorWithRed:0.20 green:1.00 blue:0.20 alpha:1],
                                    [UIColor colorWithRed:1.00 green:0.20 blue:1.00 alpha:1], nil];;
}
%end
