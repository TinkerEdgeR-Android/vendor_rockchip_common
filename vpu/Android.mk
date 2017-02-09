LOCAL_PATH := $(call my-dir)

ifneq ($(filter rk%, $(TARGET_BOARD_PLATFORM)), )

include $(CLEAR_VARS)
LOCAL_MODULE := iso
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_MODULE_STEM_32 := $(LOCAL_MODULE)
LOCAL_MODULE_STEM_64 := $(LOCAL_MODULE)64
LOCAL_SRC_FILES_$(TARGET_ARCH) := bin/$(TARGET_ARCH)/$(LOCAL_MODULE)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := bin/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)
else
LOCAL_SRC_FILES := bin/$(TARGET_ARCH)/$(LOCAL_MODULE)
endif
LOCAL_MODULE_SUFFIX :=

include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
LOCAL_MODULE := librkffplayer
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk312x)
LOCAL_SRC_FILES :=lib/$(TARGET_ARCH)/rk312x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
ifneq ($(filter rk3228 rk3229 rk322x rk3328, $(strip $(TARGET_BOARD_PLATFORM))), )
	ifneq ($(strip $(TARGET_2ND_ARCH)), )
		LOCAL_MULTILIB := both
		LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
		LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
	else
		LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
	endif
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3188)
LOCAL_SRC_FILES :=lib/$(TARGET_ARCH)/rk3188/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3288)
LOCAL_SRC_FILES :=lib/$(TARGET_ARCH)/rk3288/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3368)
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk3368/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk3368/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk3368/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3366)
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk3366/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3399)
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk3399/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk3399/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk3399/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
endif

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libffmpeg
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3288)
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk3288/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk312x)
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk312x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
ifneq ($(filter rk3228 rk3229 rk322x rk3328, $(strip $(TARGET_BOARD_PLATFORM))), )
	ifneq ($(strip $(TARGET_2ND_ARCH)), )
		LOCAL_MULTILIB := both
		LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
		LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
	else
		LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
	endif
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3188)
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk3188/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3368)
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk3368/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk3368/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk3368/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3366)
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk3366/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
endif
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3399)
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk3399/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk3399/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk3399/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
endif

include $(BUILD_PREBUILT)
endif

# use new vpu framework mpp
USE_MPP := false
ifneq ($(filter rk3366 rk3399, $(strip $(TARGET_BOARD_PLATFORM))), )
USE_MPP := true
endif 

ifeq ($(USE_MPP), true)
include $(CLEAR_VARS)
LOCAL_MODULE := libmpp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so


ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/mpp/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/mpp/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/arm/mpp/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif

include $(BUILD_PREBUILT)
endif

ifeq ($(USE_MPP), true)
include $(CLEAR_VARS)
LOCAL_MODULE := libvpu
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so

ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/mpp/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/mpp/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/arm/mpp/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif

include $(BUILD_PREBUILT)

endif
#end use new vpu framework mpp 

ifneq ($(filter rk3228 rk3229 rk322x rk3328, $(strip $(TARGET_BOARD_PLATFORM))), )
include $(CLEAR_VARS)
LOCAL_MODULE := libmpp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)
endif

ifneq ($(filter rk3228 rk3229 rk322x rk3328, $(strip $(TARGET_BOARD_PLATFORM))), )
include $(CLEAR_VARS)
LOCAL_MODULE := libvpu
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)
endif

ifneq ($(filter rk3228 rk3229 rk322x rk3328 rk3399, $(strip $(TARGET_BOARD_PLATFORM))), )
include $(CLEAR_VARS)
LOCAL_MODULE := libffmpeg_vp9dec
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)
endif

#ape and rkaudio dec will be dropped on sofia platform
ifneq ($(filter rk%, $(TARGET_BOARD_PLATFORM)), )

include $(CLEAR_VARS)
LOCAL_MODULE := libapedec
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := librkwmapro
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libhevcdec
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcsiconv
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libjesancache
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := librkswscale
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

endif


include $(CLEAR_VARS)
LOCAL_MODULE := librk_audio
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := librk_demux
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_BOARD_PLATFORM)), rk3188)
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
else
LOCAL_SRC_FILES :=lib/$(TARGET_ARCH)/rk3188/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := librk_hevcdec
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := librk_vpuapi
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so

ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3188)
LOCAL_SRC_FILES :=lib/$(TARGET_ARCH)/rk3188/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk322x)
LOCAL_SRC_FILES :=lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3366)
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk3366/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3399)
ifeq ($(strip $(TARGET_BOARD_PLATFORM_PRODUCT)), laptop)
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk3399/$(LOCAL_MODULE)_hp$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk3399/$(LOCAL_MODULE)_hp$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk3399/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk3399/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif #TARGET_BOARD_PLATFORM_PRODUCT
else
ifeq ($(strip $(TARGET_BOARD_PLATFORM)), rk3328)
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/rk322x/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
ifneq ($(filter px5%, $(PRODUCT_BUILD_MODULE)), )
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/px5/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/px5/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
endif
endif
endif
else
#rk312x rk3188 rk3368 rk3288 use older librkvpu_api
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
endif
endif

include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libjpeghwdec
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libjpeghwenc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

ifeq ($(strip $(USE_INTEL_MDP)), true)

include $(CLEAR_VARS)
LOCAL_MODULE := libmdp_omx_core
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_soft_aacdec_mdp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_soft_aacenc_mdp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_soft_amrdec_mdp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_soft_amrenc_mdp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_soft_mp3dec_mdp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_soft_vorbisdec_mdp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
ifneq ($(strip $(TARGET_2ND_ARCH)), )
LOCAL_MULTILIB := both
LOCAL_SRC_FILES_$(TARGET_ARCH) := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_$(TARGET_2ND_ARCH) := lib/$(TARGET_2ND_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
else
LOCAL_SRC_FILES := lib/$(TARGET_ARCH)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
endif
include $(BUILD_PREBUILT)

endif

ifneq ($(filter px5%, $(PRODUCT_BUILD_MODULE)), )
include $(CLEAR_VARS)
LOCAL_MODULE := libdrivingrecoder
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_STEM := $(LOCAL_MODULE)
LOCAL_MODULE_SUFFIX := .so
LOCAL_32_BIT_ONLY := true
LOCAL_SRC_FILES := lib/arm/px5/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
include $(BUILD_PREBUILT)
endif
