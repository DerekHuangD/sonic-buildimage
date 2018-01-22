# grpc package

GRPC_VERSION = 0.11.1
GRPC_VERSION_FULL = $(GRPC_VERSION)-1

LIBGRPC = libgrpc0_$(GRPC_VERSION_FULL)_amd64.deb
$(LIBGRPC)_SRC_PATH = $(SRC_PATH)/grpc
SONIC_MAKE_DEBS += $(LIBGRPC)

LIBGRPC_DEV = libgrpc-dev_$(GRPC_VERSION_FULL)_amd64.deb
$(eval $(call add_derived_package,$(LIBGRPC),$(LIBGRPC_DEV)))


