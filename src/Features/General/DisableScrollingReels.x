#import "../../InstagramHeaders.h"
#import "../../Manager.h"

%hook IGUnifiedVideoCollectionView
- (void)didMoveToWindow {
    %orig;
        // pref removed
        NSLog(@"[SCInsta] Disabling scrolling reels");
        
        self.scrollEnabled = false;
}

- (void)setScrollEnabled:(BOOL)arg1 {
        // pref removed
        NSLog(@"[SCInsta] Disabling scrolling reels");
        
        return %orig(NO);

    return %orig;
}
%end