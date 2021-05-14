*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Governor (5) - TS 03
    [documentation]   Check for Dispense Now Button Colour
    [tags]   governor    dispense_button_colour

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Clean Up Database for Debugging
    Clean Rake Database

### Initialise the Variables needed for Current Test Scenario
###     Create variable to compare the CSS Background Colour Attribute - #DC3545 is the color for the background-color for the button.
###     For this test scenario, the css-attribute will return in RGBA format so the variable will be defined to RGBA format
###         rgba(220, 53, 69, 1) == #DC3545 --> See ${BACKGROUNDCOLORATTRIBUTE} under GlobalVariable.resource

### Test if Dispense Now Button Colour is red / rgba(220, 53, 69, 1) / #DC3545
    ${CheckCSSAttribute}=    Get CSS Property Value    ${DISPENSENOWBUTTON}    background-color
    Should Be Equal As Strings    ${BACKGROUNDCOLORATTRIBUTE}    ${CheckCSSAttribute}


    [Teardown]   Teardown Configuration

