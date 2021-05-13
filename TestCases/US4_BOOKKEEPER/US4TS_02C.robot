*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story BookKeeper (4) - TS 02 C
    [documentation]   Check for Mask Encryption on NATID and Computation of Tax Relief Amount (Aged 50)
    [tags]   bookkeeper    hero_aged_50

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Test Calculating Hero Details (Aged 50)
    Insert Hero Details via Insert API    ${HEROAGE50[0]}    ${HEROAGE50[1]}    ${HEROAGE50[2]}    ${HEROAGE50[3]}    ${HEROAGE50[4]}    ${HEROAGE50[5]}
    ${TaxReliefAmount}=    Calculate Tax Relief Funds    ${HEROAGE50[2]}    ${HEROAGE50[3]}    ${HEROAGE50[4]}    ${HEROAGE50[5]}

    Element Should Contain    ${NATIDFIRSTENTRYXPATH}    $$$$$$$
    Element Text Should Be    ${TAXRELIEFFIRSTENTRYXPATH}    ${TaxReliefAmount}


    [Teardown]   Teardown Configuration