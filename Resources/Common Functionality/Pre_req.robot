*** Settings ***
Library  SeleniumLibrary
Resource  Login.robot




*** Variables ***
${url}  http://192.168.137.8:3355/home
${browser}  chrome

*** Keywords ***
Start Script
    Open Browser   ${url}  ${browser}
    Maximize Browser Window
    Login Page
    Sleep    4s


End Script
    LogOut page
    Close Browser
