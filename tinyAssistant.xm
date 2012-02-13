// tinyAssistant: make the bottom bar of Siri little

static BOOL homescreen = NO;

%hook SBAssistantController
- (float)bottomBarHeight {
    float orig = %orig;
    
    if (!homescreen) {
        return orig/1.6;
    }
    
    return orig;
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
