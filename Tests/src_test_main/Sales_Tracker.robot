*** Settings ***
Documentation  Basic Functionality for Sale Tracker web UI
Library    SeleniumLibrary
#Access to some of the global variable and use in script
Resource  ../../Resources/Common Functionality/Login.robot
Resource  ../../Resources/Common Functionality/Pre_req.robot
Variables  ../../Tests/src_test_main/Webelements.py
Test Setup  Pre_req.Start Script
Test Teardown  Pre_req.End Script

*** Variables ***

*** Test Cases ***

Sales Tracker Home Page
    [Documentation]  This Test case is to verify the Homepage Of Sales Tracker
    [Tags]  Functional

    Page Should Contain    Alwyn Joseph
    Log    Login to application Successfully with 'Super Admin' credential


Verify the filter icon
    [Documentation]  This test case is to verify the filter is present in UI
    [Tags]  Functional

    Page Should Contain Element    ${search_submit_button}
    Log    Filter icon is present in UI

Verify filter button clickeble
    [Documentation]   Verify that user able to click the filter option button
    [Tags]  Functional

    Press Keys    ${search_submit_button}  [Return]
    Log  User is able to click on the Submit button


Verify all filter pre-req are available in UI
    [Documentation]   Verify that user able to click the filter option button
    [Tags]  Functional
     Page Should Contain Element    ${search_filter_1}
    Sleep    2s
    Page Should Contain Element    ${search_filter_2}
    Sleep    2s
    Page Should Contain Element    ${search_filter_3}
    Sleep    2s
    Page Should Contain Element    ${search_filter_4}
    Sleep    2s
    Page Should Contain Element    ${search_filter_5}
    Sleep    2s
    Page Should Contain Element    ${search_filter_6}
    Sleep    2
    Page Should Contain Element    ${search_filter_7}
    Sleep    2s
    Page Should Contain Element    ${search_filter_8}
    Sleep    2s



Verify the Status bar
    [Documentation]   Verify that Add ststus button is visible to the user
    [Tags]  Functional

    Press Keys    ${search_submit_button}  [Return]
    Sleep    3s
    Press Keys   ${open_leads_status}  [Return]
    Page Should Contain Element    ${add_status_button}
    Log    Add Status button is available in UI


#Verify add the New Status for the existing lead
#    [Documentation]   Verify that add a new status for existing lead
#    [Tags]  Functional
#    Open Browser    http://192.168.137.8:3355/  chrome
#    Maximize Browser Window
#    Input Text    //input[@name="userMail"]    alwynj@datatemplate.com
#    Input Text    //input[@name="password"]    Def@123
#    Press Keys    //button[@type="submit"]  [Return]
#    Sleep    4s
# Press Keys   ${search_submit_button}      [Return]
#    sleep    5s
#    Press Keys   ${open_leads_status}    [Return]
#    sleep    5s
#    Press Keys   ${add_status_button}           [Return]
#    Sleep    3s
#    Input Text    ${status_date}    01022024
#    Sleep    2s
#    Input Text    ${due_date}   10022024
#    Sleep    2s
#    Input Text    ${status_description}    Bond Date
#    Sleep    2s
#    Press Keys  ${action_by}  [Return]
#    Sleep    5s
    #mouse down    //li[@class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-ra2fyx"][3]
    #press keys    //li[@class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-ra2fyx"]     [Enter]

# Verify edit the existing lead status
#    [Documentation]   Verify that add user can edit the existing status for a lead
#    [Tags]  Functional
#     Press Keys    ${search_submit_button} [Return]
#    Sleep    2s
#    Press Keys   ${open_leads_status} [Return]
#    Sleep    5s
#    Press Keys   ${edit_leads_status} [Return]
#    Sleep    3s
#    Input Text    ${due_date}   11022024
#    Sleep    3s
#    Press Keys  ${search_submit_button}   [Return]
#    Sleep    5s
#    Log    User isable to edit an existing leads

#Verify deleting a status from Status grid
#    [Documentation]   Verify that user can delete a status from the status grid
#    [Tags]  Functional
#    Press Keys    ${search_submit_button}  [Return]
#    Sleep    2s
#     Press Keys   ${open_leads_status} [Return]
#    Sleep    5s
#    Press Keys   ${edit_leads_status}[Return]
#    Sleep    5s
#    Press Keys  ${delete_leads_status }  [Return]
#    Sleep    2s
#    Press Keys  ${delete_popup_msg}     [Return]


Verify to updated data is visible in UI
    [Documentation]   Verify that user is able to see the updated data in UI
    [Tags]  Functional
    Press Keys    ${search_submit_button} [Return]
    Sleep    2s
    Press Keys   ${open_leads_status}  [Return]
    Sleep    5s
   #    Page Should Contain    Alwyn Joseph
    Page Should Contain Element    //td[text()="Alwyn Joseph"]


#Verify Status date and Due date both are same
#    [Documentation]   Verify that the status date and Due date both are same
#    [Tags]  Functional
#    Press Keys    ${search_submit_button}  [Return]
#    Sleep    2s
#    Press Keys   ${open_leads_status}  [Return]
#    Sleep    5s
#    ${Status_Date}  Set Variable    //td[text()="05-May-24"]
#    ${Due_date}  Set Variable   //td[text()="05-May-24"]
#    Should Be Equal    ${Status_Date}    ${Due_date}
#    Page Should Contain    Alwyn Joseph
#    Page Should Contain Element    //td[text()="Alwyn Joseph"]



