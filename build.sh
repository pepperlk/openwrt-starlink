#!/bin/bash

# # REQ_GEN_DEPS := grpcurl protoc protoc-gen-go protoc-gen-go-grpc

# # GEN_PROTO := spacex/api/common/status/status.proto spacex/api/device/command.proto spacex/api/device/common.proto spacex/api/device/device.proto spacex/api/device/dish_config.proto spacex/api/device/dish.proto spacex/api/device/rssi_scan.proto spacex/api/device/services/unlock/service.proto spacex/api/device/transceiver.proto spacex/api/device/wifi_config.proto spacex/api/device/wifi_util.proto spacex/api/device/wifi.proto spacex/api/satellites/network/ut_disablement_codes.proto spacex/api/telemetron/public/common/time.proto
# # GEN_MODEL_DIR := model

# # TMPFILE=$$(mktemp)
# # trap "rm $${TMPFILE}" EXIT

# grpcurl -plaintext -protoset-out "proto/dish.protoset" "192.168.100.1:9200" describe SpaceX.API.Device.Device

# # protoc --descriptor_set_in="proto/dish.protoset" --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" 


# protoc --descriptor_set_in=proto/dish.protoset --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron"  spacex/api/satellites/network/ut_disablement_codes.proto
# protoc --descriptor_set_in=proto/dish.protoset --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron"  spacex/api/device/device.proto
# protoc --descriptor_set_in=proto/dish.protoset --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron"  spacex/api/common/status/status.proto
# protoc --descriptor_set_in=proto/dish.protoset --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron"  spacex/api/device/command.proto
# protoc --descriptor_set_in=proto/dish.protoset --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron"  spacex/api/device/common.proto
# protoc --descriptor_set_in=proto/dish.protoset --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron"  spacex/api/device/dish.proto
# protoc --descriptor_set_in=proto/dish.protoset --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron"  spacex/api/device/wifi.proto
# protoc --descriptor_set_in=proto/dish.protoset --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron"  spacex/api/device/transceiver.proto
# protoc --descriptor_set_in=proto/dish.protoset --go_out="pkg/" --go-grpc_out="pkg/" --go_opt="module=spacex.com/api" --go-grpc_opt="module=spacex.com/api" --go_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go-grpc_opt="Mspacex/api/device/services/unlock/service.proto=spacex.com/api/device/services/unlock" --go_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go-grpc_opt="Mspacex/api/satellites/network/ut_disablement_codes.proto=spacex.com/api/satellites" --go_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron" --go-grpc_opt="Mspacex/api/telemetron/public/common/time.proto=spacex.com/api/telemetron"  spacex/api/device/wifi_config.proto


env GOARCH=arm64 GOOS=linux go build -ldflags "-w -s" -o starlink

# if /usr/local/bin/opkg-build does not exist then download it
if [ ! -f "/usr/local/bin/opkg-build" ]; then


    wget https://git.yoctoproject.org/opkg-utils/snapshot/opkg-utils-0.6.3.tar.gz
    # untar
    tar -xvf opkg-utils-0.6.3.tar.gz
    # move all contects to /usr/local/bin/
    mv opkg-utils-0.6.3/* /usr/local/bin/
fi



# if package folder exists then remove it and its contents
if [ -d "package" ]; then
  rm -rf package
fi

# create package folder
mkdir package
mkdir package/conffiles 
mkdir package/CONTROL
mkdir package/etc
mkdir package/etc/init.d
mkdir package/usr
mkdir package/usr/bin

# copy the binary to package/usr/bin
cp starlink package/usr/bin

# copy control to package/CONTROL/control
cp files/control.txt package/CONTROL/control


# copy starlink.init to package/etc/init.d/starlink
cp files/starlink.init package/etc/init.d/starlink


# build package
opkg-build -c package out