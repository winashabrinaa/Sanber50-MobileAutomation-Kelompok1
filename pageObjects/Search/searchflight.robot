*** Settings ***
Resource            ../base.robot
Variables           searchflight-locators.yaml


Library    AppiumLibrary

*** Keywords ***
Click search for menu
    Click Element        //android.widget.Button[@resource-id="com.example.myapplication:id/button6" and @text="Search"]

verify search in page Appears
    Wait Until Element Is Visible        //android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]

verify search Succesfully
    Input Text        //android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    DA935
    Click Element        //android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]
    Wait Until Element Is Visible        //android.widget.TextView[@text="Toronto to Paris"]
