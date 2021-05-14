#   ACE_GDS_Oppenheimer
This Repository is a solution to the code challenge based on [Oppenheimer Project](http://tiny.cc/oppenheimerprojectdev). It will run as a series of Test Suite to test the functionality of **Oppenheimer Project** based on the User Stories and the Acceptance Criteria.

## Test Design Approaches
Based on User Stories and Acceptance Criteria found on the PDF file. The Quality Engineer, **Chia Sheng Jie** have decided to use the following Testing Strategies below:
* Choice of Automation Framework Used for Testing Functionality: `Robot Framework` **(Keyword Based Framework that I am comfortable with and easy to setup!)**

* Sort Test Suites according to **Roles**
  * Clerk (3 User Stories)
  * BookKeeper (1 User Stories)
  * Governor (1 User Stories)

### Test Scenarios (WIP and Completed)
The Summary of the Test Scenario Titles can be found under summary_ts.txt  

```
SourceFiles/Text/summary_ts.txt
```
## Setup Robot Framework To Execute the Test Suite

### Installing Python 3.9 & Pycharm

```
### Python 3.9.4 ###
Go To       https://www.python.org/downloads/release/python-394/
Download    Python 3.9.4 (v3.9.4:1f2e3088f3, Apr  4 2021, 12:32:44)

*** Make sure that PIP is selected and install. This can be check when you type pip in terminal ***

### Pycharm 2020.3.5 ###
Go To       https://www.jetbrains.com/pycharm/download/other.html
Download    Pycharm Version 2020.3.5

### Pycharm Plugins ###
Download    ANSI Highligher       Idealog       IntelliBot @SeleniumLibrary Patched

### Set up Pycharm External Tools ###
Go To       Pycharm       Preference
Go To       Tools         External Tools
Add         New External Tool
Edit According to the Image as Shown Below 
```
![External Tool Instruction 1](SourceFiles/Images/External%20Tools%20Guide.png)


### Setup Chrome WebDriver

```
Go To       https://chromedriver.chromium.org/downloads
Download    https://chromedriver.storage.googleapis.com/index.html?path=89.0.4389.23/

*** Place the Webdriver (Unzipped) in a directory that can be easily located for future updates *** 
*** Find the Chrome Webdriver Version that is compatiable to the one that is running on the testing Desktop ***  
```

< **For MACOS Users:** PATH can be edit and located according to this [link](https://www.kenst.com/2015/03/including-the-chromedriver-location-in-macos-system-path/) >


### Installing Robot Framework and Required Dependency

```
pip install robotframework
pip install robotframework-seleniumlibrary
pip install robotframework-request
```

To get the full replication for the setups, and the dependency needed to install, please check under requirements.txt

```
SourceFiles/Text/requirements.txt
```

### Clone the Repository and Execute the Files

```
Go To       https://tinyurl.com/ChiaShengJieGDSChallenge
Clone Repo  https://tinyurl.com/ChiaShengJieGDSChallenge

Run         Pycharm Version 2020.3.5
Import Project to Pycharm

Open Terminal
Type        java -jar {path-to-this-jar}/OppenheimerProjectDev.jar

Right Click within Pycharm Application
Select External Tool 
Select Run Robot Script        
```
