//tinyAssistant: make the bottom bar of Siri little

%hook SBAssistantController
- (float)bottomBarHeight { return %orig/1.6; }
%end
