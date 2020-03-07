@ECHO OFF
ECHO Making packages...
set UNITY_PATH="C:/Program Files/Unity/Editor/Unity.exe"
set PROJECT_PATH="C:/Users/danielmi/Documents/UnityWork/UnityRepos/arfoundation-demos"
set PACKAGE_PATH=C:/Users/danielmi/Documents/UnityWork/ARFoundationDemosReleases/
set COMMON_FOLDER="Assets/Common"
set UX_FOLDER="Assets/UX"
set IMAGE_FOLDER="Assets/ImageTracking"
set UX_PACKAGE=UX.unitypackage
set IMAGE_PACKAGE=ImageTracking.unitypackage
%UNITY_PATH% -batchmode -nographics -quit -projectPath %PROJECT_PATH% -exportPackage %COMMON_FOLDER% %UX_FOLDER% "%PACKAGE_PATH%%UX_PACKAGE%"
%UNITY_PATH% -batchmode -nographics -quit -projectPath %PROJECT_PATH% -exportPackage %COMMON_FOLDER% %IMAGE_FOLDER% "%PACKAGE_PATH%%IMAGE_PACKAGE%"
PAUSE