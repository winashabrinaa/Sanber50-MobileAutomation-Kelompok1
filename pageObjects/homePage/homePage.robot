*** Settings ***
Resource            ../base.robot
Variables            homePage-locators.yaml

*** Keywords ***
Verify Homepage Appears
    Wait Until Element Is Visible        ${appLogo}
    Wait Until Element Is Visible        ${signInButton}
    Wait Until Element Is Visible        ${bookButton}
    Wait Until Element Is Visible        ${searchButton}
    Wait Until Element Is Visible        ${checkInButton}