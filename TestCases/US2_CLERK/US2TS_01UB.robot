*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Clerk (2) - TS 01 UNHAPPY B
    [documentation]    Insert Random Number of Records via insertRandomToDatabaseForNoReason API - Count -99 (FAIL)
    [tags]    clerk    insert_random_record_api

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Inital Clean Up Database
    Clean Rake Database

### Initialise the Variables needed for Current Test Scenario
###     Uses insertRandomToDatabaseForNoReason API to generate a random list of Hero Details based on [count]

### Test for Multiple Single Hero Details via insertRandomToDatabaseForNoReason: Set Count to 0 to check if there are any possible errors
    Insert Multiple Random Hero Details via API    -99

### Check for the UI if it displays the Tax Relief Amount and the number of workers
### ### Check UI Tax Dispense to Working Class Hero    <TotalNumberOfHeroesRecorded>
    Check UI Tax Dispense to Working Class Hero    -99


    [Teardown]   Teardown Configuration