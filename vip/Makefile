DEBUG=0
FINALPACKAGE=1
TARGET = iphone:clang:latest:8.0

export THEOS_PACKAGE_SCHEME = rootless

ifeq ($(THEOS_PACKAGE_SCHEME), rootful)
	THEOS_PACKAGE_DIR = DEBs/rootful
else ifeq ($(THEOS_PACKAGE_SCHEME), rootless)
	THEOS_PACKAGE_DIR = DEBs/rootless
else ifeq ($(THEOS_PACKAGE_SCHEME), jailed)
	THEOS_PACKAGE_DIR = DEBs/jailed
else
	THEOS_PACKAGE_DIR = DEBs
endif

## source files ##
SCLALERTVIEW_SRC = popup.xm
export ARCHS=arm64 arm64e
include $(THEOS)/makefiles/common.mk

TWEAK_NAME=YeeTalkPatch
YeeTalkPatch_FILES=Tweak.xm $(SCLALERTVIEW_SRC)
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
$(TWEAK_NAME)_LIBRARIES += substrate
include $(THEOS_MAKE_PATH)/tweak.mk
