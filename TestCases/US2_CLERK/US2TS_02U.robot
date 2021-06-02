*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Clerk (2) - TS 02
    [documentation]    Insert Single Record via insertMultiple insertPerson API
    [tags]    clerk    insert_single_multiple_record_api

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Clean Up Database for Debugging
    Clean Rake Database

### Initialise the Variables needed for Current Test Scenario
###     Create single entry for this Test Scenario via Create Dictionary
    ${Hero_Entry_Empty}=    Create Dictionary    natid=${EMPTY}    name=${EMPTY}    gender=${EMPTY}    birthday=${EMPTY}    salary=${EMPTY}    tax=${EMPTY}

### Test for Insert Single Record via insertMultiple insertPerson API
    Insert Single Hero Details via InsertMultiple API    ${Hero_Entry_Empty}

### Check for the UI if it displays the Tax Relief Amount and the number of workers
### ### Check UI Tax Relief Funds    <TaxReliefAmount>    <TotalNumberOfHeroesRecorded>
    Check UI Tax Dispense to Working Class Hero    0


    [Teardown]   Teardown Configuration


