*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}              https://www.jamtangan.com/login
${BROWSER}          chrome 
${EMAIL}            //*[@id="app"]/div/div[2]/div/div/div[2]/div/div/form/div/fieldset/div/div/input
${PASSWORD}         //*[@id="app"]/div/div[2]/div/div/div[2]/div/div/form/div/div/fieldset/div/div[1]/input
${MASUK}            //*[@id="app"]/div/div[2]/div/div/div[2]/div/div/form/button
${JAM}              //*[@id="app"]/div/div[2]/div/div[4]/div[2]/div/div/div[1]/div/a/div/div/div[2]/div
${BELI_NOW}         //*[@id="app"]/div/div[2]/div/div[1]/div[3]/div[2]/div[2]/div[2]/button
${LANJUTKAN}        //*[@id="app"]/div/div[2]/div/div[2]/div[2]/div[3]/button
${TOGLE}            //*[@id="app"]/div/div[2]/main/section[2]/div/div/div/div[2]/div/div[2]/label/div/div[2]
${PILIH_V}          //*[@id="app"]/div/div[2]/main/section[2]/div/div/div/div[1]/div[1]/button
${PAKAI_V}          //*[@id="modal-root"]/div/div/div/div/div/div/div[2]/div/div[3]/button
${KURIR}            //*[@id="app"]/div/div[2]/main/section[1]/div[2]/div/div[2]/button/div
${JNE}              //*[@id="app"]/div/div[2]/main/section[1]/div[2]/div[2]/div/ul/li[2]
${POPUP}            //*[@id="app"]/div/div[2]/main/section[1]/div[2]/div[2]/div/ul
${PILIH_PAYMENT}    //*[@id="app"]/div/div[2]/main/section[2]/div/div/div/div[5]/div/div[2]/button
${BANK_TRANSFER}    //*[@id="app"]/div/div[2]/main/section[1]/div[2]/div[2]/div[2]/div/div[2]/div
${MANDIRI}          //*[@id="app"]/div/div[2]/main/section[1]/div[2]/div[3]/div[2]/div[1]/div[2]/picture/img
${ORDER}            //*[@id="app"]/div/div[2]/main/section[2]/div/div[4]/div/div[2]/button
${CNFRM}            //*[@id="driver-popover-item"]/div[3]
${OKE}              //*[@id="driver-popover-item"]/div[4]/button
${BAYAR}            //*[@id="app"]/div/div[2]/div/div[2]/div[6]/div[2]/div[2]/button

*** Test Cases ***
Jam Tangan
    Launch Browser
    Login
    Close

*** Keywords ***
Launch Browser
    Open Browser                     ${URL}         ${BROWSER}
    Maximize Browser Window

Login
    Wait Until Element Is Visible    ${EMAIL}
    Click Element                    ${EMAIL}
    Input Text                       ${EMAIL}               tuncayios14@gmail.com
    Input Text                       ${PASSWORD}            Enter@ja77
    Wait Until Element Is Visible    ${MASUK}
    Click Element                    ${MASUK}
    Wait Until Element Is Visible    ${JAM}
    Click Element                    ${JAM}
    Wait Until Element Is Visible    ${BELI_NOW}
    Click Element                    ${BELI_NOW}
    Wait Until Element Is Visible    ${LANJUTKAN}
    Click Element                    ${LANJUTKAN}
    Wait Until Element Is Visible    ${TOGLE}
    Click Element                    ${TOGLE}
    Wait Until Element Is Visible    ${PILIH_V}
    Click Element                    ${PILIH_V}
    Wait Until Element Is Visible    ${PAKAI_V}
    Click Element                    ${PAKAI_V}
    Wait Until Element Is Visible    ${KURIR}
    Click Element                    ${KURIR}
    Wait Until Element Is Visible    ${POPUP}
    Click Element                    ${POPUP}
    Wait Until Element Is Visible    ${JNE}
    Click Element                    ${JNE}
    Wait Until Element Is Visible    ${PILIH_PAYMENT}
    Click Element                    ${PILIH_PAYMENT}
    Wait Until Element Is Visible    ${BANK_TRANSFER}
    Click Element                    ${BANK_TRANSFER}
    Wait Until Element Is Visible    ${MANDIRI}
    Click Element                    ${MANDIRI}
    Wait Until Element Is Visible    ${ORDER}
    Click Element                    ${ORDER}
    Wait Until Element Is Visible    ${CNFRM}
    Click Element                    ${CNFRM}
    # Wait Until Element Is Visible    ${OKE}
    # Click Element                    ${OKE}
    Wait Until Element Is Visible    ${BAYAR}
    Click Element                    ${BAYAR}

Close
    Sleep                            1
    # Close Browser