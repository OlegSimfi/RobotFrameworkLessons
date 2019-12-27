*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py

*** Variables ***
${URL}  https://www.thetestingworld.com/testings/


*** Keywords ***
Open Chrome
    [Arguments]    ${url}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Maximize Browser Window
#    Set Window Size  1920  1080
    Go To    ${url}

Enter: Username Password Email
    [Arguments]     ${username}  ${email}  ${password}
    Input Text  name:fld_username   ${username}
    Input Text  xpath://input[@name='fld_email']    ${email}
    Input Password  name:fld_password   ${password}

Select Radio button and Checkbox
    Select Radio Button     add_type    office
    Select Checkbox     name:terms

Click Details link
    ClickLink   xpath://a[text()='Read Detail']

Get Title Log
    ${Title} =  Get Title
    [Return]    ${Title}

Close Browser Window
    ${Title} =  Get Title
    Log  ${Title}
    Close Browser

Create Folder at Runtime
    [Arguments]     ${foldername}
    create_folder   ${foldername}
    Log  "Tsk done successfully"

Concatenate Username and Password
    [Arguments]  ${username}    ${password}
    ${resultval}=  concatinate_two_values  ${username}  ${password}
    Log  ${resultval}
