*** Settings ***
Library    SeleniumLibrary
#Resource    ../TestSuite/CommonFunctionalities.robot
Test Setup    Start Testcases
Test Teardown   Finish Testcases
Test Template    Invalid login
Documentation    Verify login functionality
*** Test Cases ***
#Verifying login functionality with multiple userid &password
Verifying credentials
    Wrong username right password      adm@yourstore.com       Def@123
    Wrong username empty password      adm@yourstore.com       ${EMPTY}
    Empty username wrong password      ${EMPTY}                123
    Wrong username wrong password      adm@yourstore.com       xyx
    Right username wrong password      jyothilakshmimv@datatemplate.com    abc
    Right username right password      jyothilakshmimv@datatemplate.com    Def@123
*** Keywords ***
Start Testcases
        open browser    http://192.168.137.8:3355/home     Chrome
        maximize browser window
Finish Testcases
        close browser
Invalid login
    #Declaring the arguments
    [Arguments]     ${error_msg}    ${email}     ${password}
    #Passing userid
    Input text      xpath://*[@id=':r0:']        ${email}
    #Passing user password
    Input text      //*[@id=':r1:']      ${password}
    #Clicking on login button
    click button    //*[@id='root']/div/div/div/form/div/button
    sleep    2s
    #Clicking on outside of the 'invalid login popup message'
    click element at coordinates    //div[@data-testid="sentinelStart"]   200     150
    sleep    3s

