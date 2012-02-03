export THEOS_DEVICE_IP = 10.0.0.11
include theos/makefiles/common.mk

TWEAK_NAME = tinyAssistant
tinyAssistant_FILES = tinyAssistant.xm

include $(THEOS_MAKE_PATH)/tweak.mk
