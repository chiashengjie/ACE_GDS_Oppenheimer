*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    String

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story BookKeeper (4) - TS 01
    [documentation]    Check API (taxRelief and taxReliefSummary) Can Be Initiated via GET Request
    [tags]   bookkeeper    tax_relief_get_api

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Populate a list of Random Working Class Heroes List
    Insert Multiple Random Hero Details via API    12

### GET Request for Tax Relief List and Tax Relief Summary
    Initiate GET Request    Get Tax Relief List    calculator/taxRelief
    Initiate GET Request    Get Tax Relief List    calculator/taxReliefSummary


    [Teardown]   Teardown Configuration
