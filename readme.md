# Felinesoft Office Certificate Fix

During the migration from on-premises Exchange to Exchange 365 here at Felinesoft, we're experiencing random certificate errors.

Run this program [Office certificate fix](Office%20certificate%20fix.exe?raw=true) and it will check for the message every half second and press "yes" when it appears.

## To add to startup

To add this to your windows startup:

* Windows key + R
* Type `shell:startup`
* Save [Office certificate fix](Office%20certificate%20fix.exe?raw=true) to the startup folder
* Double click to test the .exe _(you'll likely have a windows warning, but press "More Info", and "Run", as this will only come up once)_

## Screenshot

Here is the error message it combats:

![error message](security%20popup.png)