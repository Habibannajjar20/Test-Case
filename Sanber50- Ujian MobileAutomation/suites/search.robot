*** Settings ***
Library    AppiumLibrary
Resource    ../pageObject/keyword.resource
Resource    ../pageObject/search.robot
Resource    ../pageObject/base.robot
Test Setup    base.Open Flight Application

*** Variables ***
${valid_flightnumber}       DA935
${invalid_flightnumber}     DD092


*** Test Cases ***
User not be able to search flight number with invalid email
    User tab element search
    User input flight number         flight_number=${invalid_flightnumber}
    User tab search button

User should be able to search flight number with valid data
    User tab element search
    User input flight number         flight_number=${valid_flightnumber}
    User tab search button
