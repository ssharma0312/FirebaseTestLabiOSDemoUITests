#!/bin/bash

buildDir="customFolder-rdc/Build/Products"

gcloud firebase test ios run --test $buildDir/FirebaseDemoTests.zip \
 --device model=iphone11pro,version=16.6,locale=en_US,orientation=portrait \
 --device model=iphone14pro,version=16.6,locale=en_US,orientation=portrait