*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story BookKeeper (4) - TS 02 D
    [documentation]   Check for Mask Encryption on NATID and Computation of Tax Relief Amount (Aged 75)
    [tags]   bookkeeper    hero_aged_75

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Test Calculating Hero Details (Aged 75)
    Insert Hero Details via Insert API    ${HEROAGE75[0]}    ${HEROAGE75[1]}    ${HEROAGE75[2]}    ${HEROAGE75[3]}    ${HEROAGE75[4]}    ${HEROAGE75[5]}
    ${TaxReliefAmount}=    Calculate Tax Relief Funds    ${HEROAGE75[2]}    ${HEROAGE75[3]}    ${HEROAGE75[4]}    ${HEROAGE75[5]}

    Check UI Tax Relief Funds    ${TaxReliefAmount}    1


    [Teardown]   Teardown Configuration