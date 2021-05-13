*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Clerk (1) - TS 01
    [documentation]    Insert Single Record via insert insertPerson API
    [tags]    clerk    insert_single_record_api

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Initialise the Variables needed for Current Test Scenario
###     Uses default Variable Array @{Default_HERO}

### Test for Insert Complete Single Hero Details
    Insert Hero Details via Insert API

    Element Text Should Be    ${NATIDFIRSTENTRYXPATH}    188-$$$$$$$
    Element Should Contain    ${CHECKTOTALRELIEFXPATH}    £19750.00 will be dispensed to 1 Working Class Hero/s


    [Teardown]   Teardown Configuration