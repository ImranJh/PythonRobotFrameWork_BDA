*** Settings ***
Documentation     SalesTracker
Library    SeleniumLibrary
#Resource    ../../../Resources/CommonFunctionalities.robot
Resource   ../../Resources/MainPage Functionality/SuperadminPage.robot

Resource  ../../Resources/Common Functionality/Pre_req.robot
Test Setup  Pre_req.Start Script
Test Teardown  Pre_req.End Script
*** Variables ***
*** Test Cases ***
Verify SuperAdmin loginpage functionalities
    [Documentation]    Verify that super admin is able to land on the home page
    [Tags]    Functional
    SuperadminPage.Verify SuperAdmin can land on home page
#Verify super admin page UI components - (Lead,Create Lead,Lead Approval,Dashboard)
    #[Documentation]    Verify that super admin is able to view all the UI components(Lead,Create Lead,Lead Approval,Dashboard)
    #SuperadminPage.Verify super admin page UI components
#Verify SuperAdmin Dashboard functionalities -Click & enter text values
    #[Documentation]    Verify that super admin able to click on dashboard and  all the required fields filled correctly
    #[Tags]    Functional
    #SuperadminPage.Verify Dashboard elements
#Verify user create button functionality
    #[Documentation]    Verify that super admin is able to create a user by clicking on 'Create' button
    #[Tags]    Functional
    #SuperadminPage.Verify create button functionality
#Verify 'manage users' element in super admin dashboard
    #[Documentation]    Verify that super admin able to click on manage user
    #[Tags]    Functional
    #SuperadminPage.Verify 'manage users' element
Verify 'Data Management' Element in super admin dashboard
    [Documentation]    Verify that super admin able to click on Data Management and create master data
    [Tags]    Functional
    SuperadminPage.Verify 'Data Management' Element
Verify creation of master data in Data management
    [Documentation]    Verify that super admin able to create master data
    [Tags]    Functional
    SuperadminPage.Verify creation of master data
