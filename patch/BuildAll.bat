GenerateEventDefinitions.exe -ev "events" -s "tmdata/source/events.c" -o "tmdata/source/gen_events.c" -w

echo off
for /r /d %%x in (*) do (
    pushd "%%x"
    if exist "build.bat" (
    echo on
    call build.bat
    echo off
)
    popd
)

pause