#!/usr/bin/env bash

xcodeVersion=$(xcodebuild -version)

if [[ $xcodeVersion != *Xcode\ 6.* ]]
then
  echo "Error: you need to have Xcode 6.0 (or above) selected using xcode-select."
  echo "Found Xcode version: $xcodeVersion"
  exit 0
fi

xcodeDir="$(xcode-select -p)/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application"
echo "Copying files to $xcodeDir"

cp -rv Empty\ Application.xctemplate "$xcodeDir"
echo "Success."
