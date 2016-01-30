#!/bin/bash

node --max-old-space-size=8000 --expose-gc "../../../node_modules/asyncshell/lib/common-test/launchers/launchbyname.js" "@testspath/dicom/istdicom-parse-orthanc/suite-01-istdicom-parse-orthanc-test.json"
aRetCode=$?

aColorEscape='\E[47;32m'
if [ $aRetCode -ne 0 ]
then
    aColorEscape='\E[47;31m'
fi
echo -e ',{"exit":'$aColorEscape$aRetCode'\033[0m, "file":"'$aColorEscape'launch-56-dicom launch-02-istdicom-parse-orthanc samplelaunchone-01-istdicom-parse-orthanc.sh\033[0m"},'
if [ $1 ]
then
    return $aRetCode
else
    exit $aRetCode
fi

