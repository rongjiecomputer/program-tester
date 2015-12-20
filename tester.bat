@echo off

echo tester.bat

if exist "%program%.cpp" (
  echo %program%.cpp is selected.
  echo compiling ...
  g++ -o "%program%" "%program%.cpp" -Wall -O2 -std=c++11
  if %ERRORLEVEL% equ 0 (
    if exist "%program%.txt" (
      echo %program%.txt is found. redirect stdin to %program%.txt
      echo running ...
      "%program%" < "%program%.txt"
    ) else (
      echo running ...
      "%program%"
    )
    if exist "%program%.out" (
      echo.
      echo %program%.out is found.
      echo output:
      type "%program%.out"
    )
  ) else (
    echo compilation failed.
  )
) else (
  echo program is not set.
)
