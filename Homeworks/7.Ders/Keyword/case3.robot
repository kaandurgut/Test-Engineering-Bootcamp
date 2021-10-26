*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
create session
    open browser    about:blank    chrome
    maximize browser window

go to home page
    go to    https://isinolsun.com/is-ilanlari

click yayinlanma tarihi
    click element    css=[data-test="publish-date-filter-button"]

select yayinlanma tarihi
    click element    xpath=//*[@id="__next"]/div[1]/div[1]/div/div[1]/div[2]/div/a[3]

click work type
    click element    css=[data-test="work-type-filter-button"]

select work type
    click element    xpath=//*[@id="__next"]/div[1]/div[1]/div/div[2]/div[2]/div/a[2]

close session
    close browser