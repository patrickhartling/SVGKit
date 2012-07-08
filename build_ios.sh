#!/bin/bash

set -o errexit

cd XCodeProjects/SVGKit
rm -rf build

xcodebuild -target SVGKitLibrary -sdk iphonesimulator5.1
xcodebuild -target SVGKitLibrary -sdk iphoneos5.1
libtool -static -o ../../libSVGKitLibrary.a \
   ./build/Release-iphoneos/libSVGKitLibrary.a \
   ./build/Release-iphonesimulator/libSVGKitLibrary.a
