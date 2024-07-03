#import <Preferences/Preferences.h>
#import "../../imsghue.h"

@interface PSTableCell (PrivateColourPicker)
- (UIViewController *)_viewControllerForAncestor;
@end

@interface IMHColorPickerCell : PSTableCell <UIColorPickerViewControllerDelegate>
@property (nonatomic, retain) UILabel *headerLabel;
@property (nonatomic, retain) UIView *colorPreview;
@property (nonatomic, retain) UIColor *tintColour;
@end