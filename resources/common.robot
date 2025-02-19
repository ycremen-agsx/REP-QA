*** Settings ***
Resource       ../variables/mobileLocators.robot
Library        SeleniumLibrary
Library        OperatingSystem
Library        Screenshot

*** Variables ***
           

*** Keywords ***

Main Web Setup
    [Documentation]        This is the main setup for the connexi
    [Arguments]            ${BROWSER}
    Empty Directory                 reports/screenshots/
    
    Screenshot.Set Screenshot Directory        reports/screenshots/
    Open Browser           about:blank    ${BROWSER}
    Maximize Browser Window

Main Web Teardown
    [Documentation]        This is the main teardown for the web app
    Run Keyword If Test Failed    Custom Capture Page Screenshot    @{TEST TAGS}
    Close All Browsers