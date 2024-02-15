*** Settings ***
Documentation    LoginFunctionality
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Verify add the New Status for the existing lead
    [Documentation]   Verify that add a new status for existing lead
    [Tags]  Functional
    Open Browser  http://192.168.137.8:3355/home  chrome
    Maximize Browser Window
    Input Text    //input[@name="userMail"]    alwynj@datatemplate.com
    Input Text    //input[@name="password"]    Def@123
    Press Keys    //button[@type="submit"]  [Return]
    Sleep    4s
    Press Keys    //button[@type="submit"]  [Return]
    Sleep    2s
    Press Keys   (//button[@aria-label="expand row"])[2]  [Return]
    Sleep    5s
    ${Status_Date}  Set Variable    //td[text()="05-May-24"]
    ${Due_date}  Set Variable   //td[text()="05-May-24"]
    Should Be Equal    ${Status_Date}    ${Due_date}
#    Page Should Contain    Alwyn Joseph
    Page Should Contain Element    //td[text()="Alwyn Joseph"]
    Sleep    5s
    Press Keys  //button[text()="Logout"]  [Return]
    Close Browser
    Page Should Contain Element    //td[text()="Alwyn Joseph"]
    Sleep    5s
    Press Keys  //button[text()="Logout"]  [Return]
    Close Browser



#    Press Keys  //button[text()="Logout"]  [Return]
#    Close Browser



#    Press Keys   //button[text()='Add Status']  [Return]
#    Sleep    3s
#    Input Text    //input[@name="statusDate"]    01022024
#    Sleep    2s
#    Input Text    //input[@name="triggerDate"]    10022024
#    Sleep    2s
#    Input Text    //input[@name="statusDescription"]    Bond Date
#    Sleep    2s
#    Press Keys    //input[@wfd-id="id12"]  [Return]
#    Sleep    5s
##    Input Text    //input[@wfd-id="id12"]    Prajna
#    Select From List By Index  //*[@id="menu-actionBy"]/div[3]/ul  1
#
