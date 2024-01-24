*** Settings ***
Resource    ../pageObject/base.robot
Resource    ../pageObject/resource-locator.yaml

*** Test Cases ***
succesfully open application
    open flight Application
    verify homepage appears
    close flight Application
