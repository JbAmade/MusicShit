TARGET := iphone:clang:latest:7.0
THEOS_DEVICE_IP = 192.168.1.17
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = musicshit

musicshit_FILES = Tweak.x
musicshit_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += musicshitprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
