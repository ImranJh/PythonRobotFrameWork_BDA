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

Sales Tracker Home Page
    [Documentation]  This Test case is to verify the Homepage Of Sales Tracker
    [Tags]  Functional
    Page Should Contain Element    //label[text()="Organization:"]
    Sleep    2s
    Page Should Contain Element    //label[text()="Lead/POC:"]
    Sleep    2s
    Page Should Contain Element    //label[text()="Action By:"]
    Sleep    2s
    Page Should Contain Element    //label[text()="Region:"]
    Sleep    2s
    Page Should Contain Element    //label[text()="Status:"]
    Sleep    2s
    Page Should Contain Element    //label[text()="MSA:"]
    Sleep    2
    Page Should Contain Element    //label[text()="SOW:"]
    Sleep    2s
    Page Should Contain Element    //label[text()="NDA:"]
    Sleep    2s
    Log    All filter options are avilablein UI

Verify filter button clickeble
    [Documentation]   Verify that user able to click the filter option button
    [Tags]  Functional

    Press Keys    //button[@type="submit"]  [Return]
    Log  User is able to click on the Submit button

Verify the filter icon
    [Documentation]  This test case is to verify the filter is present in UI
    [Tags]  Functional

    Page Should Contain Element    //button[@type="submit"]
    Log    Filter icon is present in UI

Sales Tracker Home Page
    [Documentation]  This Test case is to verify the Homepage Of Sales Tracker
    [Tags]  Functional

    Page Should Contain    Alwyn Joseph
    Log    Login to application Successfully with 'Super Admin' credential

Verify the Status bar
    [Documentation]   Verify that Add ststus button is visible to the user
    [Tags]  Functional

    Press Keys    //button[@type="submit"]  [Return]
    Sleep    3s
    Press Keys   //button[@aria-label="expand row"]  [Return]
    Page Should Contain Element    //button[text()='Add Status']
    Log    Add Status button is available in UI


Verify creating a new lead
    [Documentation]   Verify that add user can edit the existing status for a lead
    [Tags]  Functional
    Press Keys    //button[@type="submit"]  [Return]
    Sleep    2s
    Press Keys   //button[@aria-label="expand row"]  [Return]
    Sleep    5s
    Press Keys   //button[text()="Add Status"]  [Return]
    Sleep    2s
    Input Text    //input[@name="statusDate"]     01022024
    Sleep    3s
    Input Text    //input[@name="triggerDate"]    11022024
    Sleep    3s
    Input Text     //input[@name="statusDescription"]     New Company
    Sleep    3s
    Press Keys   (//input[@name="actionBy"])[2]  [Return]
    Sleep    3s
    Press Keys  //button[text()='submit']   [Return]
    Sleep    20s
    Log    User is able to create a new Status


 Verify edit the existing lead status
    [Documentation]   Verify that add user can edit the existing status for a lead
    [Tags]  Functional
    Press Keys    //button[@type="submit"]  [Return]
    Sleep    2s
    Press Keys   //button[@aria-label="expand row"]  [Return]
    Sleep    5s
    Press Keys   (//button[@type="button"])[12]  [Return]
    Sleep    3s
    Input Text    //input[@name="triggerDate"]    11022024
    Sleep    3s
    Press Keys  //button[text()='submit']   [Return]
    Sleep    5s
    Log    User isable to edit an existing leads

Verify deleting a status from Status grid
    [Documentation]   Verify that user can delete a status from the status grid
    [Tags]  Functional
    Press Keys    //button[@type="submit"]  [Return]
    Sleep    2s
    Press Keys   (//button[@aria-label="expand row"])[2]  [Return]
    Sleep    5s
    Press Keys  (//button[@type="button"])[16]  [Return]
    Sleep    2s
    Press Keys  //button[text()="Yes"]  [Return]
    Log    User is able to delete a ststus

Verify to updated data is visible in UI
    [Documentation]   Verify that user is able to see the updated data in UI
    [Tags]  Functional
    Press Keys    //button[@type="submit"]  [Return]
    Sleep    2s
    Press Keys   (//button[@aria-label="expand row"])[2]  [Return]
    Sleep    5s
   #    Page Should Contain    Alwyn Joseph
    Page Should Contain Element    //td[text()="Alwyn Joseph"]
    Log  user is able to see the updated data in UI

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

