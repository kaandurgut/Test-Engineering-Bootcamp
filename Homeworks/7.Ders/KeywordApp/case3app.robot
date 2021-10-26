*** Settings ***
Documentation    Suite description
Resource    ../Keyword/case3.robot

*** Keywords ***
isin olsun select
    case3.create session
    case3.go to home page
    case3.click yayinlanma tarihi
    case3.select yayinlanma tarihi
    case3.click work type
    case3.select work type
    case3.close session
