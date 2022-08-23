*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://gredu.sowat.dev/auth
${BROWSER}        chrome
${EMAIL}          tuncayio.s.1.4@gmail.com
${FIELDEMAIL}     xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[1]/div/div[1]/div/input
${PASSWORD}       123456
${FIELDPASSWORD}  xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[2]/div/div[1]/div/span/input
${WELCOME TEXT}   Masuk ke Akunmu
${EMPTY}          a
${PROFIL}         //*[@id="__next"]/section/main/section/header/div[2]/div[2]/div/span/img
${LOGOUT}         /html/body/div[2]/div/div/div/div/div[2]/div/span
*** Test Cases ***
Gredu V3 Automation
    Launch Browser
    Login Dev
   
*** Keywords ***
Launch Browser
    Open Browser                     ${URL}         ${BROWSER}
    Maximize Browser Window
    
Login Dev
    Page Should Contain              ${WELCOME TEXT}
    Wait Until Element Is Visible    ${FIELDEMAIL} 
    Input Text                       ${FIELDEMAIL}       ${EMAIL} 
    Wait Until Element Is Visible    ${FIELDPASSWORD}
    input Text                       ${FIELDPASSWORD}      ${PASSWORD}
    Click Element                    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/button
    # Click Element                    xpath=//*[@id="__next"]/section/main/section/main/div/div/div/button
    wait until Element Is Visible    ${PROFIL}
    Click Element                    ${PROFIL}
    wait until Element Is Visible    ${LOGOUT}
    Click Element                    ${LOGOUT}

Close
    Sleep                            3
    Close Browser