*** Settings ***
Resource            ../base.robot
Variables            signin-locators.yaml

*** Keywords ***
Click Sign In Button
    Click Element                        ${toSignInPage}


Verify Sign In Page Appears
    Wait Until Element Is Visible        ${fieldUsername}
    Wait Until Element Is Visible        ${fieldPassword}  

Verify Sign In Successful
    Input Text                           ${fieldUsername}    support@ngendigital.com
    Input Password                       ${fieldPassword}    abc123
    Click Element                        //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
    Wait Until Element Is Visible        ${displayName}
    
Verify Sign In Unsuccessful
    Input Text                           ${fieldUsername}    kelompok1@ngendigital.com
    Input Password                       ${fieldPassword}    abc123
    Click Element                        //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
    Verify Sign In Page Appears
    