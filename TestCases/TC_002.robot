*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot
Test Setup  Open Chrome    ${URL}
Test Teardown  Close Browser Window

*** Variables ***
${URL}  https://robotframework.org/


*** Test Cases ***
Swich tab test
    [Tags]      regression
    click element  tag:a[href="https://robotframework.org/rpa/"]
    Select browser tab  Robot Framework
    Select browser tab  Robot Framework RPA
    ${list1}=  Get Window Handles
    log to console  ${list1}
    select window   ${list1}[0]




