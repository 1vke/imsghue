TARGET := iphone:clang:15.6:15.6
THEOS_PACKAGE_SCHEME=rootless
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = Preferences

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = imsghuePreferences

imsghuePreferences_FILES = $(wildcard Observers/*.m Controllers/*.m Cells/*.m)
imsghuePreferences_FRAMEWORKS = UIKit
imsghuePreferences_PRIVATE_FRAMEWORKS = Preferences
imsghuePreferences_INSTALL_PATH = /Library/PreferenceBundles
imsghuePreferences_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
