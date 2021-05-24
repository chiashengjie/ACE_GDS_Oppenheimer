*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story BookKeeper (4) - TS 02 A
    [documentation]   Check for Mask Encryption on NATID and Computation of Tax Relief Amount (Aged 18)
    [tags]   bookkeeper    hero_aged_18

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Test Calculating Hero Details (Aged 18)
    Insert Hero Details via Insert API    ${HEROAGE18[0]}    ${HEROAGE18[1]}    ${HEROAGE18[2]}    ${HEROAGE18[3]}    ${HEROAGE18[4]}    ${HEROAGE18[5]}
    ${TaxReliefAmount}=    Calculate Tax Relief Funds    ${HEROAGE18[2]}    ${HEROAGE18[3]}    ${HEROAGE18[4]}    ${HEROAGE18[5]}

    Check UI Tax Relief Funds    ${TaxReliefAmount}    1


    [Teardown]   Teardown Configuration