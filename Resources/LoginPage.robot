*** Settings ***
Resource    ../Resources/PageObject/LoginLocators.robot
Resource    ../Resources/PageObject/HomeLocators.robot
Resource    ../TestData/UserData.robot
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Fill UserName
    Wait Until Element Is Visible   ${input_UserID}     5s
    Input Text    ${input_UserID}   ${Valid_username}

Fill Password
    Wait Until Element Is Visible   ${input_Password}     5s
    Input Text    ${input_Password}   ${Valid_password}

Click on SignIn
    Wait Until Element Is Visible   ${btn_SignIn}     5s
    Click Button    ${btn_SignIn}

Check login successfully
    Wait Until Element Is Visible    ${elm_daily_batch_report}      20s
    ${actual_result}=    Run Keyword And Return Status
    ...    Page Should Contain Element    ${elm_daily_batch_report}
    Should Be True    "${actual_result}" == "${TRUE}"    The home page is not visible