*** Settings ***
Resource    ../KeywordApp/KariyerApp.robot

*** Test Cases ***
Kariyer Project Test
    KariyerApp.number of jobs available app
    KariyerApp.number of jobs available in two town app
    KariyerApp.number of jobs available in istanbul app