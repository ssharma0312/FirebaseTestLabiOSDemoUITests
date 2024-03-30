#!/bin/bash
# Prepare the testing builds
DEVELOPMENT_TEAM="H265B27P7N"
CODE_SIGN_IDENTITY="Apple Development: sahilsharma0312@icloud.com (V36ZTJ35JR)"

xcodebuild \
  build-for-testing \
  -project FirebaseTestLabiOSDemo.xcodeproj \
  -scheme "FirebaseTestLabiOSDemo" \
  -sdk iphoneos \
  -configuration Debug \
  -derivedDataPath './customFolder-rdc' \
  -allowProvisioningUpdates
  DEVELOPMENT_TEAM="$DEVELOPMENT_TEAM" \
  CODE_SIGN_IDENTITY="$CODE_SIGN_IDENTITY"

# Define the base directory for builds
buildDir="customFolder-rdc/Build/Products"

# Navigate to the build directory
cd "$buildDir" || exit

# Create a ZIP archive of the FirebaseDemoTests and the .xctestrun file
# This assumes both the Debug-iphoneos directory and the .xctestrun file exist and are correctly named
zip -r FirebaseDemoTests.zip Debug-iphoneos FirebaseTestLabiOSDemo_FirebaseTestLabiOSDemo_iphoneos17.2-arm64.xctestrun

# Navigate back to the script's starting directory
cd - || exit

# Check if the AppsToTest-rdc directory exists
# If it doesn't, create it. If it does, clear its contents to ensure it's empty.
appsToTestDir="AppsToTest-rdc"
if [ ! -d "$appsToTestDir" ]; then
    mkdir -p "$appsToTestDir"
else
    rm -rf "$appsToTestDir"/*
fi

# Copy the built tests.zip file to the AppsToTest-rdc folder
cp "$buildDir/FirebaseDemoTests.zip" "$appsToTestDir/"