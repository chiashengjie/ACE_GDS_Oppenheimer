*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Clerk (2) - TS 03
    [documentation]    Insert Multiple Records via insertMultiple insertPerson API
    [tags]    clerk    insert_multiple_multiple_record_api

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Clean Up Database for Debugging
    Clean Rake Database

### Initialise the Variables needed for Current Test Scenario
###     Create 5 entries for this Test Scenario via Create Dictionary
    ${Hero_Entry01}=    Create Dictionary    natid=${HEROES_ENTRY_01[0]}    name=${HEROES_ENTRY_01[1]}    gender=${HEROES_ENTRY_01[2]}    birthday=${HEROES_ENTRY_01[3]}    salary=${HEROES_ENTRY_01[4]}    tax=${HEROES_ENTRY_01[5]}
    ${Hero_Entry02}=    Create Dictionary    natid=${HEROES_ENTRY_02[0]}    name=${HEROES_ENTRY_02[1]}    gender=${HEROES_ENTRY_02[2]}    birthday=${HEROES_ENTRY_02[3]}    salary=${HEROES_ENTRY_02[4]}    tax=${HEROES_ENTRY_02[5]}
    ${Hero_Entry03}=    Create Dictionary    natid=${HEROES_ENTRY_03[0]}    name=${HEROES_ENTRY_03[1]}    gender=${HEROES_ENTRY_03[2]}    birthday=${HEROES_ENTRY_03[3]}    salary=${HEROES_ENTRY_03[4]}    tax=${HEROES_ENTRY_03[5]}
    ${Hero_Entry04}=    Create Dictionary    natid=${HEROES_ENTRY_04[0]}    name=${HEROES_ENTRY_04[1]}    gender=${HEROES_ENTRY_04[2]}    birthday=${HEROES_ENTRY_04[3]}    salary=${HEROES_ENTRY_04[4]}    tax=${HEROES_ENTRY_04[5]}
    ${Hero_Entry05}=    Create Dictionary    natid=${HEROES_ENTRY_05[0]}    name=${HEROES_ENTRY_05[1]}    gender=${HEROES_ENTRY_05[2]}    birthday=${HEROES_ENTRY_05[3]}    salary=${HEROES_ENTRY_05[4]}    tax=${HEROES_ENTRY_05[5]}

### Test for Insert Multiple Records via insertMultiple insertPerson API
    Insert Multiple Hero Details via InsertMultiple API    ${Hero_Entry01}    ${Hero_Entry02}    ${Hero_Entry03}    ${Hero_Entry04}    ${Hero_Entry05}

    Check UI Tax Relief Funds    8892.00    5


    [Teardown]   Teardown Configuration


