*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
create session
    open browser    about:blank    chrome
    maximize browser window

go to home page
    go to    https://isinolsun.com/

click main search button
    click element    css=[data-test="main-search-button"]

click position search
    click element    css=[data-test="position-search-input"]

input position search
    input text    css=[data-test="position-search-input"]    garson

click location search
    click element    css=[data-test="location-search-input"]

input location search
    input text    css=[data-test="location-search-input"]    istanbul

click job search button
    click element    css=[data-test="job-search-button"]

close session
    close browser


