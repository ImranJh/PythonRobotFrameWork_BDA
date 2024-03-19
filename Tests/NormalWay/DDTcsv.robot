*** Settings ***
Library    LocustLibrary

*** Test Cases ***
Run Locust Test
    Start Locust    path/to/locust/file.py    --headless    --users 10    --spawn-rate 2    --run-time 1m
    Wait Until Locust Is Ready
    ${response}    Run Locust Tasks
    Should Be True    ${response.success}
    Stop Locust
