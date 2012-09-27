// TinyAssistant: make the bottom bar of Siri little

// By Ron Melkhior (license-free)
// Modified by theiostream under the terms of the WTFPLv3 License (http://theiostream.github.com/wtfpl/LICENSE.txt)

static BOOL homescreen = NO;

%hook SBAssistantController
- (CGFloat)bottomBarHeight {
    CGFloat orig = %orig;
    return !homescreen ? orig/1.6 : orig;
}
%end

%hook SBAwayController
- (void)activate {
    %orig;
    homescreen = NO;
}
%end

%hook TPBottomLockBar
- (void)unlock {
    %orig;
    homescreen = YES;
}  
%end
