*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Clerk (3) - TS 02
    [documentation]    Upload Valid CSV with Single Record via uploadLargeFileForInsertionToDatabase uploadFile API
    [tags]    clerk    insert_single_multiple_record_upload_csv

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Initialise the Variables needed for Current Test Scenario
    ${CheckVariableList}=    Create List    5490.00    1

### Select an Valid CSV File (Single Record) and Upload
    Page Should Contain Element    ${UPLOADFILEXPATH}
    Choose File    ${UPLOADFILEXPATH}    ${FILEPATHSINGLE}
    Click Refresh Tax Relief Button

    Check UI Tax Relief Funds    ${CheckVariableList[0]}    ${CheckVariableList[1]}


    [Teardown]    Teardown Configuration


