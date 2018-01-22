# libsaithrift-dev package

LIBSAITHRIFT_DEV_CAVM = libsaithrift-dev_1.0.4_amd64.deb
$(LIBSAITHRIFT_DEV_CAVM)_SRC_PATH = $(SRC_PATH)/sonic-sairedis/SAI
$(LIBSAITHRIFT_DEV_CAVM)_DEPENDS += $(LIBTHRIFT) $(LIBTHRIFT_DEV) $(THRIFT_COMPILER) $(CAVM_LIBSAI) $(CAVM_SAI)
$(LIBSAITHRIFT_DEV_CAVM)_RDEPENDS += $(LIBTHRIFT) $(CAVM_SAI)
SONIC_DPKG_DEBS += $(LIBSAITHRIFT_DEV_CAVM)
