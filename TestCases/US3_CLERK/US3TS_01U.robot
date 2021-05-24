*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem

Resource    ../../Resources/Keywords/GeneralKeywords.resource
Resource    ../../Resources/Variables/GeneralVariables.resource


*** Test Cases ***
User Story Clerk (3) - TS 01UNHAPPY
    [documentation]    Upload Invalid CSV with Multiple Record via uploadLargeFileForInsertionToDatabase uploadFile API
    [tags]    clerk    insert_multiple_multiple_record_upload_csv

### Setup Configuration for the Test Scenario
    [Setup]   Setup Configuration

### Initial Clean Up Database for Debugging
    Clean Rake Database

### Select an Invalid CSV File (Missing Name Field) and Upload
    Page Should Contain Element    ${UPLOADFILEXPATH}
    Choose File    ${UPLOADFILEXPATH}    ${FILEPATHINVALID}
    Click Refresh Tax Relief Button

    Check UI Tax Relief Funds    21439.00    5


    [Teardown]    Teardown Configuration