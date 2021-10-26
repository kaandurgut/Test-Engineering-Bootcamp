*** Settings ***
Resource    ../KeywordApp/amazonApp.robot

*** Test Cases ***
amazon
    amazonApp.go amazon and find jean
    amazonApp.alisverisi gerceklestir