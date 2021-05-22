*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story BookKeeper (4) - TS 02 UNHAPPY B
    [documentation]   Check for Mask Encryption on NATID and Computation of Tax Relief Amount (Aged NGEGATIVE)
    [tags]   bookkeeper    hero_aged_neg

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Test Calculating Hero Details (Aged NEGETIVE)
    Insert Hero Details via Insert API    ${HEROAGENEG[0]}    ${HEROAGENEG[1]}    ${HEROAGENEG[2]}    ${HEROAGENEG[3]}    ${HEROAGENEG[4]}    ${HEROAGENEG[5]}
    ${TaxReliefAmount}=    Calculate Tax Relief Funds    ${HEROAGENEG[2]}    ${HEROAGENEG[3]}    ${HEROAGENEG[4]}    ${HEROAGENEG[5]}

    Element Should Contain    ${NATIDFIRSTENTRYXPATH}    $$$$$$$
    Element Text Should Be    ${TAXRELIEFFIRSTENTRYXPATH}    ${TaxReliefAmount}


    [Teardown]   Teardown Configuration