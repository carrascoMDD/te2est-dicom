echo off
node --max-old-space-size=8000 --expose-gc "../../../node_modules/asyncshell/lib/common-test/launchers/launchbyname.js" "@testspath/dicom/istdicom-parse-orthanc/suite-02-istdicom-parse-orthanc-replaceifexists-test.json"
if ERRORLEVEL 1 (
    POPD
    exit /B %ERRORLEVEL%
)
POPD
