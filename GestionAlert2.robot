*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
Test Gerer Alert
    Open Browser    http://omayo.blogspot.com/    gc
    Maximize Browser Window
    Sleep    2
    Click Button    xpath=//input[@id='alert1']
    Sleep    2
    #Alert Should Be Present    Hello
    ${Message Alert}    Handle Alert    accept
    Log To Console    ${Message Alert}
    Should Be Equal    ${Message Alert}    Hello
    ${url_Site}    Get Location
    Log To Console    ${url_Site}
    Close Browser
