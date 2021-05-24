*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story BookKeeper (4) - TS 02 E
    [documentation]   Check for Mask Encryption on NATID and Computation of Tax Relief Amount (At Least Aged 76)
    [tags]   bookkeeper    hero_aged_at_least_76

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Test Calculating Hero Details (Aged 76)
    Insert Hero Details via Insert API    ${HEROAGE76[0]}    ${HEROAGE76[1]}    ${HEROAGE76[2]}    ${HEROAGE76[3]}    ${HEROAGE76[4]}    ${HEROAGE76[5]}
    ${TaxReliefAmount}=    Calculate Tax Relief Funds    ${HEROAGE76[2]}    ${HEROAGE76[3]}    ${HEROAGE76[4]}    ${HEROAGE76[5]}

    Check UI Tax Relief Funds    ${TaxReliefAmount}    1


    [Teardown]   Teardown Configuration