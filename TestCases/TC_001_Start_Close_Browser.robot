*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot
Test Setup  Open Chrome    ${URL}
Test Teardown  Close Browser Window

*** Test Cases ***
Robot First Test Case
    ${Res}=  Get Title Log
    Enter: Username Password Email  ${Res}  test@gmail.com  1234567
    Select Radio button and Checkbox
    Click Details link


Robot Second Test Case
    Select Radio button and Checkbox
    Create Folder at Runtime    CreatedFolderName
    Concatenate Username and Password  Testing  World

