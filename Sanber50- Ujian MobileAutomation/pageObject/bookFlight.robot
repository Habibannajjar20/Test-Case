*** Settings ***
Resource     ../homePage/homePage.robot
Resource     ../base.robot
Variables    bookFlight-locator.yaml

*** Keywords ***
Click SignIn
    Wait Until Element Is Visible            ${btnLogin}
    Click Element    ${btnLogin}

Verify Loginpage Appears
    Wait Until Element Is Visible            ${username_login}
   
Input Username
    Click Element    ${username_login}
    Input Text       ${username_login}    support@ngendigital.com

Input Password    
    Click Element    ${password_login}
    Input Text       ${password_login}    abc123

Click Login
    Click Element    ${loginButton}

Click Button Book
    Wait Until Element Is Visible    ${btnBook}
    Click Element    ${btnBook}

Verify Book Flight Page Appears
    Wait Until Element Is Visible    ${booklayout}  

Choose Option on Spinner
    Click Element    ${spinnerFrom}
    Wait Until Element Is Visible            ${cityOptionFrom}
    Click Element    ${cityOptionFrom}
    Click Element    ${spinnerTo}
    Wait Until Element Is Visible            ${cityOptionTo}
    Click Element    ${cityOptionTo}
    Click Element    ${spinnerClass}
    Wait Until Element Is Visible            ${classOption}
    Click Element    ${classOption}

Click Date Picker
    Click Element    ${datePicker}
    Wait Until Element Is Visible            ${dateLayout}
    Click Element    ${startDate}
    Click Element    ${btnApply}
    
Choose Flight Option
    Click Element    ${btnRadio}

Click Book Flight
    Click Element    ${btnBooking}
    Wait Until Element Is Visible            ${tableLayout}
    Click Element    ${btnPriceLayout}
    Click Element    ${btnConfirm}

Verify Reservation Number Appears
    Wait Until Page Contains Element     ${flightBooked}
    

    
    



