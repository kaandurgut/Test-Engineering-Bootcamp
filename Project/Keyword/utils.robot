*** Settings ***
Library    SeleniumLibrary
Library    String

*** Keywords ***

integer
    [Arguments]    ${LOCATOR}    ${TEXT1}    ${TEXT2}
    ${DATA1}=    Get Text    ${LOCATOR}
    ${DATA2}    Remove String    ${DATA1}    ${TEXT1}
    convert to integer    ${DATA2}
    log to console    ${TEXT2} ${DATA2}
