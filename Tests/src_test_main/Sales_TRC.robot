*** Settings ***
Documentation  Basic Functionality for Sale Tracker web UI
Library    SeleniumLibrary

Resource  ../../Resources/Common Functionality/Login.robot
Resource  ../../Resources/Common Functionality/Pre_req.robot
Variables  ../../Tests/src_test_main/Webelements.py

Resource    ../../Resources/MainPage Functionality/AdminPage.robot
Resource  ../../Resources/Common Functionality/Pre_req.robot

Resource   ../../Resources/MainPage Functionality/SuperadminPage.robot
Resource  ../../Resources/Common Functionality/Pre_req.robot

Test Setup  Pre_req.Start Script
Test Teardown  Pre_req.End Script

*** Variables ***

*** Test Cases ***

Verify filter button clickeble
    [Documentation]   Verify that user able to click the filter option button
    [Tags]  Functional
    Press Keys    ${search_submit_button}  [Return]
    Log  User is able to click on the Submit button


Verify the Status bar
    [Documentation]   Verify that Add ststus button is visible to the user
    [Tags]  Functional
    Press Keys    ${search_submit_button}  [Return]
    Sleep    3s
    Press Keys   ${open_leads_status}  [Return]
    Page Should Contain Element    ${add_status_button}
    Log    Add Status button is available in UI



Verify lead creation element is present in the admin page& click link
    [Documentation]     Verify that admin is able to see lead creation screen and click the link
    [Tags]    Functional
    AdminPage.Verify lead creation link

Verify all the create lead form details
    [Documentation]    Verify that admin is able to provide all the details in create lead form
    [Tags]    Functional
    AdminPage.Verify the create lead form details

Verify submit button is present in create lead page & click link
    [Documentation]    Verify that page has submit button at the end
    [Tags]    Functional
    AdminPage.Verify submit button in the create lead module

Verify Lead Closure Approval element is present in admin page & click link
    [Documentation]    Verify that admin able to view all the pending approval request
    [Tags]    Functional
    AdminPage.Verify the Lead Closure Approval link
