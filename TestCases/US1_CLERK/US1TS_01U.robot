*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Clerk (1) - TS 01UNHAPPY
    [documentation]    Insert Single Record via insert insertPerson API (FORCE FAIL)
    [tags]    clerk    insert_single_record_api

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Initialise the Variables needed for Current Test Scenario
###     Uses modified data based on @{DEFAULT_HERO} with a missing NATID

### Test for Insert Complete Single Hero Details
    Insert Hero Details via Insert API    ${EMPTY}

    Element Text Should Be    ${CheckFirstEntryNatIdxPath}    188-$$$$$$$
    Element Should Contain    ${CheckTotalReliefxPath}    £19750.00 will be dispensed to 1 Working Class Hero/s

### Clean Up Database for Debugging As Current Entry Will Corrupt the Database and Site
    Clean Rake Database


    [Teardown]   Teardown Configuration