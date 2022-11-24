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
    Alert Should Be Present    Hello
    #Handle Alert    accept
    Close Browser
