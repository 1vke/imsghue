TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = imsghuePreferences

imsghuePreferences_FILES = IMHRootListController.m
imsghuePreferences_FRAMEWORKS = UIKit
imsghuePreferences_PRIVATE_FRAMEWORKS = Preferences
imsghuePreferences_INSTALL_PATH = /Library/PreferenceBundles
imsghuePreferences_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
