*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Governor (5) - TS 01
    [documentation]   Check for Dispense Now Button will Redirect To a New Page with Content Text to be "Cash dispensed"
    [tags]   governor    dispense_button_spelling

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Clean Up Database for Debugging
    Clean Rake Database

### Test if the Dispense Now Button will Redirect To a New Page with Content Text to be "Cash dispensed"
    Click Element    ${DISPENSENOWBUTTON}
    Element Text Should be    ${CASHDISPENSEDTEXT}    Cash dispensed


    [Teardown]   Teardown Configuration



