*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot


*** Test Cases ***
Robot First Test Case
    Open Chrome    ${URL}
    ${Res}=  Get Title Log
    Enter: Username Password Email  ${Res}  test@gmail.com  1234567
    Select Radio button and Checkbox
    Click Details link
#    Close Browser





