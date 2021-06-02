*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Clerk (1) - TS 01 UNHAPPY A
    [documentation]    Insert Single Record via insert insertPerson API - Missing NATID (FAIL)
    [tags]    clerk    insert_single_record_api

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Initialise the Variables needed for Current Test Scenario
###     Uses modified data based on @{DEFAULT_HERO} with a missing NATID
    ${HeroDetailsEdgeCases}=    Create List    ${DEFAULT_HERO[0]}    ${DEFAULT_HERO[1]}    ${DEFAULT_HERO[2]}    ${DEFAULT_HERO[3]}    ${DEFAULT_HERO[4]}    ${DEFAULT_HERO[5]}

### Test for Insert Complete Single Hero Details
    Insert Hero Details via Insert API    ${EMPTY}    ${HeroDetailsEdgeCases[1]}    ${HeroDetailsEdgeCases[2]}    ${HeroDetailsEdgeCases[3]}    ${HeroDetailsEdgeCases[4]}    ${HeroDetailsEdgeCases[5]}

### Check if the entry is appended in the database: The xPath for the First Entry will appear only if the entry is successfully appended
    Element Text Should Be    ${CheckFirstEntryNatIdxPath}    188-$$$$$$$
    Check UI Tax Relief Funds    19750.00    1


    [Teardown]   Teardown Configuration