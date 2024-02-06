*** Settings ***
Library    SeleniumLibrary
#Variables   ../Webelements.py
*** Variables ***
*** Keywords ***
Start testcases
    open browser    http://192.168.137.8:3355/home     Chrome
    maximize browser window
    sleep   3s
Finish testcases
    close browser
Verify Admin can land on home page
    #[Arguments]    ${userid}    ${password}
    input text     xpath://*[@id=':r0:']     jyothilakshmimv@datatemplate.com
    input password  //*[@id=':r1:']   Def@123
    click element   //*[@id='root']/div/div/div/form/div/button
    sleep    2s
Verify all the elements are present in admin home page
    page should contain    Search
    page should contain    Leads:
    page should contain link    link:Leads
    page should contain link    link:Create Lead
    page should contain link    link:Lead Closure Approval
    page should contain button  xpath://*[@id='root']/div/div[1]/header/div/div[3]/div/button
    page should contain button    //*[@id='root']/div/div[2]/div/div[1]/form/div/button[1]
    page should contain button    //*[@id='root']/div/div[2]/div/div[1]/form/div/button[2]
Verify lead creation link
    page should contain link    link:Create Lead
    click link    link:Create Lead
    page should contain    Lead Creation    Status Activity:
Verify the create lead form details
    page should contain    Organization
    input text    //*[@name="lead.organization"]    xyzz
    page should contain    Contact Person
    input text    //*[@name="lead.contactPerson"]   qwert
    page should contain    Reference
    input text      //*[@name="lead.reference"]     asdr
    page should contain    NDA
    click element    //*[@name="lead.nda"]
    input text  //*[@name="lead.nda"]   15-02-2024
    click element    //*[@name="lead.msa"]
    input text      //*[@name="lead.msa"]   18-02-2024
    click element    //*[@name="lead.sow"]
    input text    //*[@name="lead.sow"]     20-02-2024
    click element   //*[@name="lead.createdDate"]
    input text    //*[@name="lead.createdDate"]    02-02-2024
    page should contain    Status
    press keys    //input[@name="lead.status"]  ENTER







#Verify the mandatory text fields
    #clear element text  //*[@name="lead.contactPerson"]
    #textfield value should be    //*[@name="lead.contactPerson"]    ${empty}
Verify submit button in the create lead module
    #scroll element into view    //*[@id="root"]/div/div[2]/form/div[3]/button
    page should contain button  //*[@id="root"]/div/div[2]/form/div[3]/button
    click button    //*[@id="root"]/div/div[2]/form/div[3]/button
    sleep    3s
Verify the Lead Closure Approval link
    scroll element into view    link:Lead Closure Approval
    page should contain element    link:Lead Closure Approval
    click link  link:Lead Closure Approval
    sleep    3s













