*** Settings ***
Documentation  Basic Functionality for Sale Tracker web UI
Library    SeleniumLibrary

#Access to some of the global variable and use in script
Resource  ../../Resources/Common Functionality/Login.robot
Resource  ../../Resources/Common Functionality/Pre_req.robot

Test Setup  Pre_req.Start Script
#Test Setup  Login.Login Page
Test Teardown  Pre_req.End Script
#Test Teardown  Login.LogOut page

*** Variables ***

*** Test Cases ***

Verify Status date and Due date both are same
    [Documentation]   Verify that the status date and Due date both are same
    [Tags]  Functional
    Press Keys    //button[@type="submit"]  [Return]
    Sleep    2s
    Press Keys   (//button[@aria-label="expand row"])[2]  [Return]
    Sleep    5s
    ${Status_Date}  Set Variable    //td[text()="05-May-24"]
    ${Due_date}  Set Variable   //td[text()="05-May-24"]
    Should Be Equal    ${Status_Date}    ${Due_date}
#    Page Should Contain    Alwyn Joseph
    Page Should Contain Element    //td[text()="Alwyn Joseph"]
    Log    status date and Due date both are same
