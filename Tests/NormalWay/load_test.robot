*** Settings ***
Library    LocustLibrary

*** Test Cases ***
Run Load Test
    Start Locust    http://localhost:8089
    Wait Until Task Is Complete
    Stop Locust
