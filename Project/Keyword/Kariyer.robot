*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    String

*** Variables ***
${seconds}    2

*** Keywords ***
create session
    open browser    about:blank    chrome
    maximize browser window

go to home page
    go to    https://www.kariyer.net/

click popup close button
    click element    xpath=//*[@id="index-page"]/body/div[6]/div[1]/button

check find job button
    wait until page contains    İş Ara
    wait until page contains    İŞ BUL
    wait until page contains element   css=.is-ara

click find job button
    click element    css=.is-ara

check job list
    Wait Until Element Is Visible    css=.search-result
    Wait Until Element Contains    css=.search-result    İş İlanları

number of jobs available
    Sleep    ${seconds}s
    ${StringJobs}=    Get Text    xpath=//*[@id="__layout"]/div/div[2]/div/div[1]/div[2]/div[1]/div/div/div
    ${IntegerJobs}    Remove String    ${StringJobs}    \nİş İlanları
    convert to integer    ${IntegerJobs}
    log to console    ${IntegerJobs}

check city search
    Wait Until Element Is Visible    css=[data-test="city-title"]
    Wait Until Element Contains    css=[data-test="city-title"]    Şehir seçin

click city search button
    click element    css=[data-test="city-arrow-icon"]

select city
    Wait Until Element Is Visible    xpath=//*[@id="__BVID__47___BV_modal_body_"]/div[2]/div[1]/div/div/div/label/div
    click element    xpath=//*[@id="__BVID__47___BV_modal_body_"]/div[2]/div[1]/div/div/div/label/div

click city close button
    click element    css=[data-test="close-icon"]

click town search button
    click element    css=[data-test="district-arrow-icon"]

select town one
    Wait Until Element Is Visible    xpath=//*[@id="__BVID__219___BV_modal_body_"]/div[2]/div[5]/div/div/div/label/div
    click element    xpath=//*[@id="__BVID__219___BV_modal_body_"]/div[2]/div[5]/div/div/div/label/div

select town two
    wait until element is visible    xpath=//*[@id="__BVID__219___BV_modal_body_"]/div[2]/div[27]/div/div/div/label/div
    click element    xpath=//*[@id="__BVID__219___BV_modal_body_"]/div[2]/div[27]/div/div/div/label/div

click town close button
    click element    xpath=//*[@id="__BVID__219___BV_modal_header_"]/div/span

check apply button
    Wait Until Element Is Visible    css=[data-test="apply-button"]
    Wait Until Element Contains    css=[data-test="apply-button"]    Uygula

click apply button
    click element    css=[data-test="apply-button"]

number of jobs available in two town
    Sleep    ${seconds}s
    Wait Until Element Contains    xpath=//*[@id="__layout"]/div/div[2]/div/div[1]/div[2]/div[1]/div/div/div    İstanbul
    ${StringJobsBandZ}=    Get Text    xpath=//*[@id="__layout"]/div/div[2]/div/div[1]/div[2]/div[1]/div/div/div
    ${IntegerJobsBandZ}    Remove String    ${StringJobsBandZ}    İstanbul    İş    İlanları
    convert to integer    ${IntegerJobsBandZ}
    log to console    ${IntegerJobsBandZ}

remove filter1
    wait until element is visible    xpath=//*[@id="__layout"]/div/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[2]/div/div
    click element    xpath=//*[@id="__layout"]/div/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[2]/div/div/div[5]/i

remove filter2
    Wait Until Element Contains   xpath=//*[@id="__layout"]/div/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[2]/div    Bakırköy
    click element    xpath=//*[@id="__layout"]/div/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[2]/div/div/div[4]/i

number of jobs available in istanbul
    Sleep    ${seconds}s
    wait until element contains    xpath=//*[@id="__layout"]/div/div[2]/div/div[1]/div[2]/div[1]/div/div/div    İstanbul
    ${StringJobsIstanbul}=    Get Text    xpath=//*[@id="__layout"]/div/div[2]/div/div[1]/div[2]/div[1]/div/div/div
    ${IntegerJobsIstanbul}    Remove String    ${StringJobsIstanbul}    İstanbul    İş    İlanları
    convert to integer    ${IntegerJobsIstanbul}
    log to console    ${IntegerJobsIstanbul}

close session
    should not be equal    number of jobs available    number of jobs available in two town    number of jobs available in istanbul
    close browser