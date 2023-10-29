*** Settings ***
Resource            ../pageObjects/signIn/signIn.robot
Resource            ../pageObjects/homePage/homePage.robot

*** Test Cases ***
Succesfully Sign In Flight Page
    Open Flight Application
    Verify Homepage Appears
    Click Sign In Button
    Verify Sign In Page Appears
    Close Flight Application

Succesfully Signed In Flight Apk
    Open Flight Application
    Verify Homepage Appears
    Click Sign In Button
    Verify Sign In Page Appears
    Verify Sign In Successful
    Close Flight Application

Unsuccessfully Sign In Flight Apk
    Open Flight Application
    Verify Homepage Appears
    Click Sign In Button
    Verify Sign In Page Appears
    Verify Sign In Unsuccessful
    Close Flight Application
