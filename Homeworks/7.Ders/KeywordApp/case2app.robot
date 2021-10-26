*** Settings ***
Documentation    Suite description
Resource    ../Keyword/case2.robot

*** Keywords ***
three click image
    case2.create session
    case2.go to home page
    case2.click the button
    case2.close session