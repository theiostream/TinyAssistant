//tinyAssistant: make the bottom bar of Siri little

%hook SBAssistantController
- (float)bottomBarHeight { return 0.5f; }
%end
