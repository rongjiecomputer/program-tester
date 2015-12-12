@echo off

echo.
echo tester.bat

if exist "%program%.cpp" (
  echo %program%.cpp is selected.
  echo compiling ...
  g++ -o "%program%" "%program%.cpp" -Wall -O2 -std=c++11
  if exist "%program%.exe" (
    if exist "%program%.txt" (
      set input=%program%.txt
    ) else (
      if exist "%program%.in" set input=%program%.in
    )
    if defined input (
      echo %input% is found. redirect stdin to %input%
      echo running ...
      "%program%" < "%input%"
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
