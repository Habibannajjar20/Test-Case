*** Settings ***
Library    AppiumLibrary
Variables    search-locator.yaml
Resource    base.robot

*** Variables ***
${valid_flightnumber}          DA935
${invalid_flightnumber}        DD092


*** Keywords ***
User tab element signin
    Click Element            	    ${search}
    Wait Until Element Is Visible   ${user_bookflight}
    
User input flight number
    [Arguments]                     ${flight_number}
    Input Text                      ${user_bookflight}             ${flight_number}


User tab search button
    Click Element                   ${button_search}


User should be able to search flight number with valid data
    User tab element search
    User input flight number         user_bookflight=${valid_flightnumber}
    User tab search button
