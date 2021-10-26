*** Settings ***
Documentation    Suite description
Resource    ../Keyword/case1.robot

*** Keywords ***
search job and location
    case1.create session
    case1.go to home page
    case1.click main search button
    case1.click position search
    case1.input position search
    case1.click location search
    case1.input location search
    case1.click job search button
    case1.close session