#!/bin/sh

version=$1
osType=$2

echo "version is $version"
if [ $osType == "android" ]; then
echo "its android"
widget="<widget id=\"ch.qualitas.ebgs\" version=\"$version\" xmlns=\"http://www.w3.org/ns/widgets\" xmlns:cdv=\"http://cordova.apache.org/ns/1.0\">"
else
echo "its iOS"
widget="<widget id=\"ch.qualitasag.ebgs\" version=\"$version\" xmlns=\"http://www.w3.org/ns/widgets\" xmlns:cdv=\"http://cordova.apache.org/ns/1.0\">"
fi
# replace the widget line with the updated one
sed -i '' '/.*widget id=.*/c \ test' config.xml
