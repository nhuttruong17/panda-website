*** Settings ***
Resource        ../../Resources/LoginPage.robot
Resource        ../../TestKeyWords/Common.robot
Suite Setup     Basic Setup
Suite Teardown  Basic TearDown

*** Variables ***

*** Test Cases ***
Given navigate to LoginPage, When input user information, Then Login Success
    Verify login successfully

*** Keywords ***
Verify login successfully
    Fill UserName
    Fill Password
    Click on SignIn
    Check login successfully

