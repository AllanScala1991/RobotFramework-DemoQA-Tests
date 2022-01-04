*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BASE_URL}  https://demoqa.com
${BROWSER}   chrome

*** Keywords ***
Access Page
    Open Browser  url=${BASE_URL}  browser=${BROWSER} 

Close Window
    Close Browser