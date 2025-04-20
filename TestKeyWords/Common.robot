*** Settings ***
Library     SeleniumLibrary
Resource    ../TestData/Global.robot
*** Keywords ***
Basic Setup
#    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
#    Call Method    ${chrome_options}    add_argument    --start-maximized
#    Call Method    ${chrome_options}    add_argument    --incognito
#    Call Method    ${chrome_options}    add_argument    --disable-popup-blocking
#options=${chrome_options}

    ${firefox_options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys
    Call Method    ${firefox_options}    add_argument    --start-maximized
    Call Method    ${firefox_options}    add_argument    --incognito
    Call Method    ${firefox_options}    add_argument    --disable-popup-blocking
    Open Browser    ${URL}    ${FIREFOX_BROWSER}    options=${firefox_options}

Basic TearDown

    Close Browser