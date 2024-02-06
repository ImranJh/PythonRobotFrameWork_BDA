*** Settings ***
Documentation     SalesTracker
Library    SeleniumLibrary
#Resource    ../../../Resources/CommonFunctionalities.robot
Resource    ../../Resources/Jyothi/AdminPage.robot
Suite Setup     AdminPage.Start testcases
Suite Teardown    AdminPage.Finish testcases
*** Variables ***
*** Test Cases ***
Verify Admin page functionalities
    [Documentation]    Verify that admin is able to land on the home page
    [Tags]    Functional
    AdminPage.Verify Admin can land on home page
Verify all the elements present in the Admin homepage
    [Documentation]    Verify that all the labels and controls including text boxes,buttons are present in the home page
    [Tags]    Functional
    AdminPage.Verify all the elements are present in admin home page
Verify lead creation element is present in the admin page& click link
    [Documentation]     Verify that admin is able to see lead creation screen and click the link
    [Tags]    Functional
    AdminPage.Verify lead creation link
Verify all the create lead form details
    [Documentation]    Verify that admin is able to provide all the details in create lead form
    [Tags]    Functional
    AdminPage.Verify the create lead form details
#Verify the validation messages when no data provided for mandatory fields
    #AdminPage.Verify the mandatory text fields
Verify submit button is present in create lead page & click link
    [Documentation]    Verify that page has submit button at the end
    [Tags]    Functional
    AdminPage.Verify submit button in the create lead module
Verify Lead Closure Approval element is present in admin page & click link
    [Documentation]    Verify that admin able to view all the pending approval request
    [Tags]    Functional
    AdminPage.Verify the Lead Closure Approval link
