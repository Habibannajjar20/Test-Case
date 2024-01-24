*** Settings ***
Library    AppiumLibrary
Resource    ../pageObject/keyword.resource
Resource    ../pageObject/login.robot
Resource    ../pageObject/base.robot
Test Setup    base.Open Flight Application

*** Variables ***
${valid_email}          support@ngendigital.com
${valid_password}       abc123
${invalid_email}        yunita@gmail.com
${invalid_password}     123456

*** Test Cases ***
User not be able to login with invalid email
    User tab element signin
    User input username         user_email=${invalid_email}
    User input password         user_password=${valid_password}
    User tab signin button

User not be able to login with invalid password
    User tab element signin
    User input username         user_email=${valid_email}
    User input password         user_password=${invalid_password}
    User tab signin button


User should be able to login with valid data
    User tab element signin
    User input username         user_email=${valid_email}
    User input password         user_password=${valid_password}
    User tab signin button
