*** Settings ***
Documentation    Suite description
Resource    ../Keyword/amazon.robot

*** Keywords ***
go amazon and find jean
    amazon.create session
    amazon.go to home page
    amazon.click cerez
    amazon.click the moda button
    amazon.click the search area
    amazon.search jean pantolon
    amazon.click search button
alisverisi gerceklestir
    amazon.click jean pantolon
    amazon.click sepete ekle
    amazon.click alisverisi tamamla
    amazon.close session