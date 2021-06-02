*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story BookKeeper (4) - TS 07 UNHAPPY B
    [documentation]   Check for Mask Encryption on NATID and Computation of Tax Relief Amount (Aged NGEGATIVE)
    [tags]   bookkeeper    hero_aged_neg

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Test Calculating Hero Details (Aged NEGETIVE)
    Insert Hero Details via Insert API    ${HEROAGENEG[0]}    ${HEROAGENEG[1]}    ${HEROAGENEG[2]}    ${HEROAGENEG[3]}    ${HEROAGENEG[4]}    ${HEROAGENEG[5]}
    ${TaxReliefAmount}=    Calculate Tax Relief Funds    ${HEROAGENEG[2]}    ${HEROAGENEG[3]}    ${HEROAGENEG[4]}    ${HEROAGENEG[5]}

### Check for the UI if it displays the Tax Relief Amount and the number of workers
### ### Check UI Tax Relief Funds    <TaxReliefAmount>    <TotalNumberOfHeroesRecorded>
    Check UI Tax Relief Funds    ${TaxReliefAmount}    1


    [Teardown]   Teardown Configuration