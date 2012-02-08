//tinyAssistant: make the bottom bar of Siri little

BOOL homescreen;

%hook SBAssistantController
- (float)bottomBarHeight {
    if (homescreen) {
        return %orig/1.5;
    }
    if (!homescreen) {
        return %orig/1.6;
    }
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
