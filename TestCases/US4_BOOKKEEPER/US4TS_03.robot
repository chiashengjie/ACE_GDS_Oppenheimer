*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story BookKeeper (4) - TS 03
    [documentation]   Check for Mask Encryption on NATID and Computation of Tax Relief Amount (Aged 35)
    [tags]   bookkeeper    hero_aged_35

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Test Calculating Hero Details (Aged 35)
    Insert Hero Details via Insert API    ${HEROAGE35[0]}    ${HEROAGE35[1]}    ${HEROAGE35[2]}    ${HEROAGE35[3]}    ${HEROAGE35[4]}    ${HEROAGE35[5]}
    ${TaxReliefAmount}=    Calculate Tax Relief Funds    ${HEROAGE35[2]}    ${HEROAGE35[3]}    ${HEROAGE35[4]}    ${HEROAGE35[5]}

### Check for the UI if it displays the Tax Relief Amount and the number of workers
### ### Check UI Tax Relief Funds    <TaxReliefAmount>    <TotalNumberOfHeroesRecorded>
    Check UI Tax Relief Funds    ${TaxReliefAmount}    1


    [Teardown]   Teardown Configuration