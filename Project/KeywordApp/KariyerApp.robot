*** Settings ***
Documentation    Suite description
Resource    ../Keyword/Kariyer.robot

*** Keywords ***

number of jobs available app
    Kariyer.create session
    Kariyer.go to home page
    kariyer.click popup close button
    kariyer.check find job button
    Kariyer.click find job button
    kariyer.number of jobs available

number of jobs available in two town app
    kariyer.check city search
    Kariyer.click city search button
    Kariyer.select city
    Kariyer.click city close button
    kariyer.click town search button
    kariyer.select town one
    kariyer.select town two
    kariyer.click town close button
    kariyer.check apply button
    kariyer.click apply button
    kariyer.number of jobs available in two town

number of jobs available in istanbul app
    kariyer.remove filter1
    kariyer.remove filter2
    kariyer.number of jobs available in istanbul
    Kariyer.close session