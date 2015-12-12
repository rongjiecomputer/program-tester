# program-tester
little competitive programming tool for compiling code, running program and display output file altogether

## How to use
1. copy tester.bat to the folder containing code and input file
2. open command prompt and navigate to the folder
3. `set program=<programName>`
4. run tester.bat

## Sample command prompt session
```
C:\Users\rongjiecomputer\problem>tester
tester.bat
program is not set

C:\Users\rongjiecomputer\problem>set program=add1

C:\Users\rongjiecomputer\problem>tester
tester.bat
add1.cpp is selected.
compling ...
running ...
20 30
50
C:\Users\rongjiecomputer\problem>set program=add2

C:\Users\rongjiecomputer\problem>tester
tester.bat
add2.cpp is selected
compiling ...
add2.cpp: In function 'int main()':
add2.cpp:6:5: error: 'total' was not declared in this scope
compilation failed.

C:\Users\rongjiecomputer\problem>set program=add3

C:\Users\rongjiecomputer\problem>tester
tester.bat
add3.cpp is selected.
compiling ...
add3.txt is found. redirect stdin to add3.txt
running ..
3
C:\Users\rongjiecomputer\problem>set program=add4

C:\Users\rongjiecomputer\problem>tester
tester.bat
add4.cpp is selected.
compiling ...
running ...

add4.out is found.
output:
1000
```
