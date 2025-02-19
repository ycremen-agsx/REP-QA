*** Settings ***
Documentation           All PO should be redirected here 
Resource                PO/login.robot

*** Keywords ***
Sample Keyword
    [Arguments]    ${arg1}    ${arg2}
    login_page.Sample Keyword    ${arg1}    ${arg2}