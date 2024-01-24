*** Settings ***
Library    AppiumLibrary
Variables    resource-locator.yaml
Resource    base.robot

*** Variables ***
${valid_email}          support@ngendigital.com
${valid_password}       abc123
${invalid_email}        yunita@gmail.com
${invalid_password}     123456

*** Keywords ***
User tab element signin
    Click Element            	    ${signin}
    Wait Until Element Is Visible   ${username}
    
User input username
    [Arguments]                     ${user_email}
    Input Text                      ${username}             ${user_email}

User input password
    [Arguments]                     ${user_password} 
    Input Text                      ${password}             ${user_password} 

User tab signin button
    Click Element                   ${button_signin}


User should be able to login with valid data
    User tab element signin
    User input username         user_email=${valid_email}
    User input password         user_password=${valid_password}
    User tab signin button
