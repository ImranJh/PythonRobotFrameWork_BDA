*** Settings ***
Library    SeleniumLibrary

Variables    ../../Tests/src_test_main/Webelements.py
*** Variables ***
*** Keywords ***
#Start testcases
#    open browser    http://192.168.137.8:3355/home     Chrome
#    maximize browser window
#    sleep   3s
#Finish testcases
#    close browser
#Verify Admin can land on home page
#    #[Arguments]    ${userid}    ${password}
#    input text     ${user_id}    jyothilakshmimv@datatemplate.com
#    input password  ${user_password}   Def@123
#    click element   ${login_button}
#    sleep    2s
Verify all the elements are present in admin home page
    page should contain    Search
    page should contain    Leads:
    page should contain link    ${leads}
    page should contain link    ${create_lead}
    page should contain link    ${lead_closure_approval}
    page should contain button  ${logout_button}
    page should contain button    ${search_submit_button}
    page should contain button    ${report_button}
Verify lead creation link
    page should contain link    ${create_lead}
    click link    ${create_lead}
    page should contain    Lead Creation    Status Activity:
Verify the create lead form details
    click link    ${create_lead}
    page should contain    Organization
    input text    ${organization}    abc tech
    page should contain    Contact Person
    input text    ${contact_person}   Hari Krishnan
    page should contain    Reference
    input text  ${reference}    asdr
    page should contain    NDA
    click element    ${nda_date}
    input text  ${nda_date}  15-02-2024
    click element    ${msa_date}
    input text      ${msa_date}  18-02-2024
    click element    ${sow_date}
    input text    ${sow_date}     20-02-2024
    click element   ${created_date}
    input text    ${created_date}    07-02-2024

    page should contain    Status
    press keys    ${status_list}  CLICK
    #Selecting first status value from list
    mouse down    ${status_list_value}
    sleep    3s
    click element    ${status_list_value}

    press keys    ${region_list}  CLICK
    #selecting 7th value from region list
    mouse down      ${region_list_value}
    sleep    3s
    click element    ${region_list_value}
    sleep    5s

Verify submit button in the create lead module
    #scroll element into view    //*[@id="root"]/div/div[2]/form/div[3]/button
    page should contain button  ${search_submit_button}
    click button    ${search_submit_button}
    sleep    3s
Verify the Lead Closure Approval link
    scroll element into view    ${lead_closure_approval}
    page should contain element    ${lead_closure_approval}
    click link  ${lead_closure_approval}
    sleep    3s













