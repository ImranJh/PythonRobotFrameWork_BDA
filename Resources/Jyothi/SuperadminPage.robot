*** Settings ***
Library    SeleniumLibrary
#Variables   ../Webelements.py
*** Variables ***
*** Keywords ***
Start Testcases
    open browser    http://192.168.137.8:3355/home     Chrome
    maximize browser window
    sleep   3s
Finish Testcases
    close browser
Verify SuperAdmin can land on home page
    #[Arguments]    ${userid}    ${password}
    input text     xpath://*[@id=':r0:']     alwynj@datatemplate.com
    input password  //*[@id=':r1:']   Def@123
    click element   //*[@id='root']/div/div/div/form/div/button
    sleep    2s
Verify super admin page UI components
    page should contain link    link:Leads
    page should contain link    link:Create Lead
    page should contain link    link:Lead Closure Approval
    page should contain link    link:Dashboard
Verify Dashboard elements
    click link    link:Dashboard
    page should contain    User Name
    input text    //*[@name="userName"]     Jyothi
    page should contain    User Mail
    input text    //*[@name="userMail"]     jyothilakshmimv@datatemplate.com
    sleep    2s
    page should contain    User Role
    click element   //div[@id='demo-simple-select']
    sleep    5s
    mouse down    //li[@class='MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-ama7e7'][2]
    sleep    5s
    click element    //li[@class='MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-ama7e7'][2]
Verify create button functionality
    page should contain button    //*[@id="root"]/div/div[3]/div/div/form/div/div[2]/button
    click button    //*[@id="root"]/div/div[3]/div/div/form/div/div[2]/button
    sleep    3s
Verify 'manage users' element
    #click link    link:Dashboard
    page should contain    Manage Users
    click element    //*[@id="root"]/div/div[2]/div/ul/li[2]/div/p
    #press keys    //li[@class="MuiListItem-root MuiListItem-gutters css-1tpp0wj"][2]        ENTER
    sleep    2s
Verify 'Data Management' Element
    click link    link:Dashboard
    page should contain    Data Management
    click element    //*[@id="root"]/div/div[2]/div/ul/li[3]/div/p
    sleep    2s
    page should contain    Master Data
Verify creation of master data
    click element    //*[@class="MuiSelect-select MuiSelect-standard MuiInputBase-input MuiInput-input css-1cccqvr"]
    mouse down    //*[@id="menu-type"]/div[3]/ul/li[1]
    click element    //*[@id="menu-type"]/div[3]/ul/li[1]
    click element    //*[@id="root"]/div/div[3]/div/div[1]/form/div/div[1]/div[2]/div/div
    #add data
    sleep    5s
    click button    //*[@id="root"]/div/div[3]/div/div[1]/form/div/div[2]/button








