#!/bin/sh

echo "Making packages..."
UNITY_PATH=/Applications/Unity/Hub/Editor/2019.3.0f6/Unity.app/Contents/MacOS/Unity
PROJECT_PATH=/Users/danielmi/Documents/AR_Repos/DemosMaster/arfoundation-demos
PACKAGE_PATH=/Users/danielmi/Documents/AR_Repos/DemosMaster/ARFoundationDemosReleases/
COMMON_FOLDER="Assets/Common"
UX_FOLDER="Assets/UX"
IMAGE_FOLDER="Assets/ImageTracking"
UX_PACKAGE=UX.unitypackage
IMAGE_PACKAGE=ImageTracking.unitypackage

$UNITY_PATH -batchmode -nographics -quit -projectPath $PROJECT_PATH -exportPackage $COMMON_FOLDER $UX_FOLDER "$PACKAGE_PATH$UX_PACKAGE"
$UNITY_PATH -batchmode -nographics -quit -projectPath $PROJECT_PATH -exportPackage $COMMON_FOLDER $IMAGE_FOLDER "$PACKAGE_PATH$IMAGE_PACKAGE"

echo "Making Zip..."
cd $PROJECT_PATH; zip -r source.zip Assets/ Packages/ ProjectSettings/
mv source.zip $PACKAGE_PATH
tar -zcvf source.tar.gz Assets/ Packages/ ProjectSettings/
mv source.tar.gz $PACKAGE_PATH
