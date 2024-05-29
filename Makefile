TARGET := iphone:clang:15.6:15.6
INSTALL_TARGET_PROCESSES = MobileSMS

THEOS_PACKAGE_SCHEME=rootless
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = imsghue

imsghue_FILES = Tweak.x
imsghue_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += imsghuepreferences
include $(THEOS_MAKE_PATH)/aggregate.mk
