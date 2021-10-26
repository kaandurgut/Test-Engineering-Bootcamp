*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
create session
    open browser    about:blank    chrome
    maximize browser window

go to home page
    go to    https://isinolsun.com/

click the button
    click element    xpath=//*[@id="__next"]/div[1]/section[3]/div[1]/div/div[2]/div[2]/ul/li[1]

close session
    close browser