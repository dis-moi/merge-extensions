## Makefile used to merge the two LMEM extensions
BUILD_DIR=build
CHROMIUM_DIR=chromium-addon
CHROMIUM_BUILD_DIR=${CHROMIUM_DIR}/dist
PROTO_DIR=proto-ext
PROTO_BUILD_DIR=${PROTO_DIR}/build/extension

default: update build merge

clean: clean-build clean-extensions

clean-build:
	rm -rf ${BUILD_DIR}

clean-extensions: clean-chromium clean-proto

clean-chromium:
	rm -rf ${CHROMIUM_BUILD_DIR}

clean-proto:
	rm -rf ${PROTO_BUILD_DIR}

update:
	git pull --recurse-submodules origin

build: clean-extensions build-chromium build-proto

build-chromium:
	cd ${CHROMIUM_DIR} && npm install

build-proto:
	cd ${PROTO_DIR} && npm run build:extension

merge: clean-build merge-build clean-extensions

build-dir:
	mkdir ${BUILD_DIR}

copy-chromium:
	cp -rf ${CHROMIUM_BUILD_DIR}/* ${BUILD_DIR}

copy-proto:
	cp -rf ${PROTO_BUILD_DIR}/* ${BUILD_DIR}

copy-manifest:
	cp manifest.json ${BUILD_DIR}

merge-build: build-dir copy-chromium copy-proto copy-manifest
