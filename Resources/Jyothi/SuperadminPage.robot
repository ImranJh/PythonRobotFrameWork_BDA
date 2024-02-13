*** Settings ***
Library    SeleniumLibrary
Variables   ../../Tests/src_test_main/Webelements.py
*** Variables ***
*** Keywords ***
Verify SuperAdmin can land on home page
    #[Arguments]    ${userid}    ${password}
    input text      ${user_id}      alwynj@datatemplate.com
    input password  ${user_password}   Def@123
    click element   ${login_button}
    sleep    2s
Verify super admin page UI components
    page should contain link    ${leads}
    page should contain link    ${create_lead}
    page should contain link    ${lead_closure_approval}
    page should contain link    ${dashboard}
Verify Dashboard element create user
    click link    ${dashboard}
    page should contain    Create User
    input text    ${user_name}     Jyothi
    sleep    2s
    input text    ${user_mail}     jyothilakshmimv@datatemplate.com
    sleep    2s
    click element   ${user_role_list}
    sleep    5s
    #selecting 2nd user role from the list
    mouse down  ${user_role_values}
    sleep    5s
    click element    ${user_role_values}
Verify create button functionality
    page should contain button    ${search_submit_button}
    #click button    ${search_submit_button}
    sleep    3s
Verify 'manage users' element
    click link    ${dashboard}
    page should contain    Manage Users
    click element    ${manage_users}
    #press keys    //li[@class="MuiListItem-root MuiListItem-gutters css-1tpp0wj"][2]        ENTER
    sleep    2s
Verify 'Data Management' Element
    click link      ${dashboard}
    page should contain    Data Management
    click element    ${data_management}
    sleep    2s
    page should contain    Master Data
Verify creation of master data
    click element    ${dashboard}
    click element    ${data_management}
    click element   ${master_datatype_list}
    sleep    3s
    #selecting 3rd value from list
    mouse down    ${master_datatype_values}
    sleep    3s
    click element    ${master_datatype_values}
    #click element    //*[@id="root"]/div/div[3]/div/div[1]/form/div/div[1]/div[2]/div/div
    sleep    3s
    click element    ${data_value}
    input text    ${data_value}  AI
    sleep    5s
    click button    ${search_submit_button}
    page should contain    AI
    sleep    5s
Deleting master data
    click element    ${dashboard}
    click element    ${data_management}
    click element    ${delete_master_data}










