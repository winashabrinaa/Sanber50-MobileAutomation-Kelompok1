*** Settings ***
Resource            ../pageObjects/homePage/homePage.robot

*** Test Cases ***
Succesfully Open Flight Homepage
    Open Flight Application
    Verify Homepage Appears
    Close Flight Application
