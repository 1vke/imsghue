TARGET := iphone:clang:15.6:15.6

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = imsghuePreferences

imsghuePreferences_FILES = $(wildcard *.x *.m)
imsghuePreferences_FRAMEWORKS = UIKit
imsghuePreferences_PRIVATE_FRAMEWORKS = Preferences
imsghuePreferences_INSTALL_PATH = /Library/PreferenceBundles
imsghuePreferences_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
