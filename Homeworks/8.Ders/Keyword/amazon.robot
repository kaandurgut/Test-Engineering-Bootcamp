*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
create session
    open browser    about:blank    chrome
    maximize browser window

go to home page
    go to    https://www.amazon.com.tr/

click the moda button
    click element    css=[data-csa-c-content-id="nav_cs_fashion_6b3951b1929a4f938613c2bf9c38375f"]

click the search area
    click element    xpath=//*[@id="twotabsearchtextbox"]

search jean pantolon
    input text    xpath=//*[@id="twotabsearchtextbox"]    Jean pantolon kadın

click search button
    click element    xpath=//*[@id="nav-search-bar-form"]/div[4]/div

click cerez
    click element    xpath=//*[@id="a-autoid-0"]

click jean pantolon
    wait until element is visible    css=[data-asin="B072MBK394"]
    click element    css=[data-asin="B072MBK394"]

click sepete ekle
    click element    css=[data-feature-name="addToCart"]

click alisverisi tamamla
    click element    xpath=//*[@id="hlb-ptc-btn"]

close session
    close browser
