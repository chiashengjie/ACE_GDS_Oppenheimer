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
    ${Hero_Entry01}=    Create Dictionary    natid=${HEROES_ENTRY_01[0]}    name=${HEROES_ENTRY_01[1]}    gender=${HEROES_ENTRY_01[2]}    birthday=${HEROES_ENTRY_01[3]}    salary=${HEROES_ENTRY_01[4]}    tax=${HEROES_ENTRY_01[5]}

### Test for Insert Single Record via insertMultiple insertPerson API
    Insert Single Hero Details via InsertMultiple API    ${HERO_ENTRY01}

### Check for the UI if it displays the Tax Relief Amount and the number of workers
### ### Check UI Tax Relief Funds    <TaxReliefAmount>    <TotalNumberOfHeroesRecorded>
    Check UI Tax Relief Funds    1284.00    1


    [Teardown]   Teardown Configuration


