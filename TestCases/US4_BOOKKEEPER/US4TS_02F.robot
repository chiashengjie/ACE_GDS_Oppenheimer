*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story BookKeeper (4) - TS 02 UNHAPPY A
    [documentation]   Check for Mask Encryption on NATID and Computation of Tax Relief Amount (Aged 0)
    [tags]   bookkeeper    hero_aged_0

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Test Calculating Hero Details (Aged 0)
    Insert Hero Details via Insert API    ${HEROAGE0[0]}    ${HEROAGE0[1]}    ${HEROAGE0[2]}    ${HEROAGE0[3]}    ${HEROAGE0[4]}    ${HEROAGE0[5]}
    ${TaxReliefAmount}=    Calculate Tax Relief Funds    ${HEROAGE0[2]}    ${HEROAGE0[3]}    ${HEROAGE0[4]}    ${HEROAGE0[5]}

    Check UI Tax Relief Funds    ${TaxReliefAmount}    1


    [Teardown]   Teardown Configuration