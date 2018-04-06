# Felinesoft Office Certificate Fix

During the migration from on-premises Exchange to Exchange 365 here at Felinesoft, we're experiencing random certificate errors.

Run this program [Office certificate fix](Office%20certificate%20fix.exe?raw=true) and it will check for the message every half second and press "yes" when it appears.

## To add to startup

To add this to your windows startup:

* Save [Office certificate fix](Office%20certificate%20fix.exe?raw=true) to your choice of location
* Windows key + R
* Type `shell:startup`
* Right click drag the .exe into the start up folder and choose "Create shortcuts here"

## Screenshot

Here is the error message it combats:

![error message](security%20popup.png)