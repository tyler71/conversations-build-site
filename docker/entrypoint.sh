#!/bin/bash

commit="$1"

# Will be appended to appname
# CONV_NAME=ConvAuto
if [ -z ${CONV_NAME} ]; then CONV_NAME="ConvAuto"; fi

# Will be appended to appId
# CONV_ID=convauto
if [ -z ${CONV_ID} ]; then CONV_ID="convauto"; fi

git clone https://github.com/siacs/Conversations
cd Conversations
git checkout "$commit"
appVersion="$(git rev-parse --short --verify HEAD)"
gitCommitMsg="$(git log -1 --pretty='%B')"

cp /libwebrtc-m81.aar libs/libwebrtc-m81.aar 

sed -i 's/applicationId "eu.siacs.conversations"/applicationId "'${CONV_ID}'.conversations"/' build.gradle 
sed -i 's/"app_name", "Conversations"/"app_name", "Conversations '${CONV_NAME}'"/' build.gradle
sed -i 's/versionName ".*"/versionName "'$appVersion'"/' build.gradle

./gradlew assembleConversationsFreeSystemDebug

find -type f -iname '*-universal-*.apk' -exec cp {} /output \;
chmod a+rw -R /output

echo ""
while read i 
do
    echo Built "$(basename $i)"
done < <(find -type f -iname '*-universal-*.apk' -print)
echo "$appVersion" - "$gitCommitMsg"
