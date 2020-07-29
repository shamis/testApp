#!/bin/sh

version=$1
osType=$2

echo "version is $version"
if [ $osType == "android" ]; then
echo "its android"
widget="<widget id=\"ch.qualitas.ebgs\" version=\"$version\" xmlns=\"http://www.w3.org/ns/widgets\" xmlns:cdv=\"http://cordova.apache.org/ns/1.0\">"
sed -i "/.*widget id=.*/c $widget" config.xml
else
echo "its iOS"
widget="<widget id=\"ch.qualitasag.ebgs\" version=\"$version\" xmlns=\"http://www.w3.org/ns/widgets\" xmlns:cdv=\"http://cordova.apache.org/ns/1.0\">"
gsed -i "/.*widget id=.*/c $widget" config.xml
fi
