## Yara-Scanner

### Introduction
Yara-Scanner is a Python-based Yara scanner intergrated into Burp Suite. Yara-Scanner allows you perform on-demand scans of websites within the Burp interface, based on custom Yara rules that you write. Tested with Yara 3.4 32-bit in Burp Suite Pro 1.6.3x on Windows 10. 

### Prerequisite: Jython
If you have not already added a Jython standalone JAR file to Burp:

1. Download the latest version (2.7) of the Jython standalone JAR file from: http://www.jython.org/downloads.html
2. In Burp, go to the Extender tab, then Options
3. Under Python Environment, click Select file... next to the field for Location of Jython standalone JAR file
4. Select your downloaded jython-standalone-2.7.0.jar file and click Open

### Prerequisite: Yara
1. Download the latest Windows version of the standalone Yara binary (3.4) from: https://github.com/plusvic/yara/releases/tag/v3.4.0. Direct download link: https://b161268c3bf5a87bc67309e7c870820f5f39f672.googledrive.com/host/0BznOMqZ9f3VUek8yN3VvSGdhRFU/yara-3.4.0-win32.zip
2. Unzip the contents of yara-3.4.0-win32.zip in a directory you will remember

### How to Install
1. Download yaraburp.py
3. In Burp, go to the Extender tab, then Extensions
3. Click Add
4. Under Extension details, set Extension type to Python
5. Click Select file...  next to the Extension file (.py) field 
6. Select your downloaded copy of yaraburp.py and click Open, then Next
7. In the Load Burp Extension window, after a few seconds the Output box should display "Burpsuite Yara scanner initialized", indicating that it was successfully loaded. A Yara tab will appear in Burp and Yara Scanner is now ready to use. Click Close.
8. Ensure that the Loaded option box is checked for Burpsuite Yara Scanner 

### How to Use
1. Click the Yara tab in Burp, then Options
2. Enter the full path of your Yara executable Location (example: C:\Users\User\Downloads\Yara\yara32.exe)
3. Enter your Yara Rules File path (example: C:\Users\User\Downloads\Yara\rules.txt). A sample rule file for obfuscated JS detection can be downloaded from this repository, though you are encouraged to write and test your own Yara rules.
4. Visit your target site(s) using Burp as an interception proxy and your browser of choice to populate Burp's Site map
5. In Burp's Target tab, in the Site map, select the site(s) you want to scan with Yara then right-click on them and select Scan with Yara
6. After the Yara scan has successfully completed, a "Yara scanning complete" message will appear. Click OK.
7. Click on the Yara tab and select Yara Output to view the rule hits; the Rule Name and URL will be listed for each hit.

### Possible Roadmap
* Ensure compatibility with Linux
* Add threading for Yara to improve performance
* Add active scanning with Yara
* Add persistent settings
