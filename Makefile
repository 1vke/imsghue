TARGET := iphone:clang:15.6:15.6
THEOS_PACKAGE_SCHEME=rootless
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = MobileSMS

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = imsghue

imsghue_FILES = Tweak.x $(wildcard Utilities/*.m)
imsghue_CFLAGS = -fobjc-arc
imsghue_LIBRARIES = sandy

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += Preferences
include $(THEOS_MAKE_PATH)/aggregate.mk
