```objectivec
#import "FixedKVO.h"

@implementation MyClass

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    // Handle KVO notification
}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"myProperty"];
    [super dealloc];
}

@end
```