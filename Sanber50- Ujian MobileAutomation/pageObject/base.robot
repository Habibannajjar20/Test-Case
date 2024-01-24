*** Settings ***
Library    AppiumLibrary
Variables    resource-locator.yaml


*** Variables ***
${REMOTE_URL}               http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}            Android
${PLATFORM_VERSION}         11.0 
${DEVICE_NAME}              R9CMB03Y20J
${PACKAGE_NAME}             com.example.myapplication 
${ACTIVITY_NAME}            com.example.myapplication.MainActivity


*** Keywords ***
Open Flight Application             
    Open Application        ${REMOTE_URL} 
    ...                     platformName=${PLATFORM_NAME}
    ...                     platformVersion=${PLATFORM_VERSION}
    ...                     deviceName=${DEVICE_NAME}
    ...                     appActivity=${ACTIVITY_NAME}
    ...                     appPackage=${PACKAGE_NAME}
    ...                     automationName=UiAutomator2

verify homepage appears
    Element Should Be Visible    ${signin}
    Element Should Be Visible    ${book}
    Element Should Be Visible    ${search}
    Element Should Be Visible    ${checkin}
    Element Should Be Visible    ${image}

close flight Application
    Close Application