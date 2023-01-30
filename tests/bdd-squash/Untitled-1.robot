*** Settings ***
Library  Browser
*** Variables ***
${TEST SETUP}    Open Application
${URL}    https://sut-test-adrian.squashcloud.io/

***Keywords*** 
Open Application
    [Documentation]    Test setup.
    Register Keyword To Run On Failure    Take Screenshot    failure_screen_{index}    fullPage=True
    New Browser    browser=firefox    headless=True
    New Page    url=${URL}

*** Test Cases ***

Open Application