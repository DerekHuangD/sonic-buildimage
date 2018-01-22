SHELL = /bin/bash
.ONESHELL:
.SHELLFLAGS += -e

GRPC_VERSION = 0.11.1
GRPC_VERSION_FULL = $(GRPC_VERSION)-1

MAIN_TARGET = libgrpc0_$(GRPC_VERSION_FULL)_amd64.deb
DERIVED_TARGETS = libgrpc-dev_$(GRPC_VERSION_FULL)_amd64.deb


$(addprefix $(DEST)/, $(MAIN_TARGET)): $(DEST)/% :
        rm -rf grpc-$(GRPC_VERSION)

        wget -nc https://github.com/grpc/grpc$(GRPC_VERSION_FULL).orig.tar.gz
        wget -nc https://github.com/grpc/grpc$(GRPC_VERSION_FULL).debian.tar.xz
        wget -nc https://github.com/grpc/grpc$(GRPC_VERSION_FULL).dsc

        dpkg-source -x grpc_$(GRPC_VERSION_FULL).dsc
        pushd grpc-$(GRPC_VERSION)
#        patch -p1 < ../patch/GRPC-3577-assertion-failed.patch
        DEB_BUILD_OPTIONS=nocheck dpkg-buildpackage -d -rfakeroot -b -us -uc -j$(SONIC_CONFIG_MAKE_JOBS)
        popd

        mv $(DERIVED_TARGETS) $* $(DEST)/

$(addprefix $(DEST)/, $(DERIVED_TARGETS)): $(DEST)/% : $(DEST)/$(MAIN_TARGET)
