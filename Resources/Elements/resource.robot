*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BTN_HOME_ELEMENT}          css=#app div div div.home-body div div:nth-child(1) div
${BTN_TEXT_BOX}              id=item-0
${INPUT_USERNAME}            id=userName
${INPUT_EMAIL}               id=userEmail
${INPUT_ADDRESS}             id=currentAddress
${INPUT_PERMANENT_ADDRESS}   id=permanentAddress
${BTN_SUBMIT}                id=submit
${RESULT_NAME}               id=name
${RESULT_EMAIL}              id=email
${RESULT_ADDRESS}            css=#output #currentAddress
${RESULT_PERMANENT_ADDRESS}  css=#output #permanentAddress
${BTN_INTERACTIONS}          css=#app > div > div > div.row > div:nth-child(1) > div > div > div:nth-child(5) > span > div

*** Keywords ***
Access Text Box
    Wait Until Element Is Visible  ${BTN_HOME_ELEMENT}
    Click Element                  ${BTN_HOME_ELEMENT}
    Wait Until Element Is Visible  ${BTN_TEXT_BOX}
    Click Element                  ${BTN_TEXT_BOX}

Fill in all fields
    Wait Until Element Is Visible  ${INPUT_USERNAME}
    Input Text                     ${INPUT_USERNAME}           Any Name
    Input Text                     ${INPUT_EMAIL}              any_email@mail.com
    Input Text                     ${INPUT_ADDRESS}            Any Address
    Input Text                     ${INPUT_PERMANENT_ADDRESS}  Any Permanent Address
    Scroll Element Into View       ${BTN_INTERACTIONS}
    Click Element At Coordinates   ${BTN_SUBMIT}  0  0

Validate Result
    Wait Until Element Is Visible  ${RESULT_NAME}
    Element Should Contain         ${RESULT_NAME}               Any Name
    Element Should Contain         ${RESULT_EMAIL}              any_email@mail.com
    Element Should Contain         ${RESULT_ADDRESS}            Any Address
    Element Should Contain         ${RESULT_PERMANENT_ADDRESS}  Any Permanent Address

