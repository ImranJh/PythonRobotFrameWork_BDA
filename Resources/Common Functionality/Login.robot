*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Keywords ***
Login Page
    Input Text    //input[@name="userMail"]    jyothilakshmimv@datatemplate.com
    Input Text    //input[@name="password"]    Def@123
    Press Keys    //button[@type="submit"]  [Return]
    Sleep    4s

LogOut page
    Sleep    2s
    Press Keys  //button[text()="Logout"]  [Return]
