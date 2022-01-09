TARGET := iphone:clang:latest:7.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = musicshitprefs

musicshitprefs_FILES = XXXRootListController.m
musicshitprefs_FRAMEWORKS = UIKit
musicshitprefs_PRIVATE_FRAMEWORKS = Preferences
musicshitprefs_INSTALL_PATH = /Library/PreferenceBundles
musicshitprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
