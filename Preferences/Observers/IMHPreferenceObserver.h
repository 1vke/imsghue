#import <Foundation/Foundation.h>
#import "../../imsghue.h"

@interface IMHPreferenceObserver : NSObject
    @property (nonatomic, copy) NSString *key;
    - (instancetype)initWithKey:(NSString *)key withChangeHandler:(void (^)(void))block;
@end