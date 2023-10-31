*** Settings ***
Resource                 ../pageObjects/Bookflight/bookflight.robot
Resource                 ../pageObjects/signIn//signIn.robot
Resource                 ../pageObjects/homePage/homePage.robot
Resource                 ../pageObjects/base.robot
Resource                 ../pageObjects/baseRealDevice.robot


*** Test Case ***
Successfully Booking Flight
    Open Flight Application
    Verify Homepage Appears
    Click Sign In Button
    Verify Sign In Page Appears
    Verify Sign In Successful
    Click Book Button
    waiting book page appears
    click round trip
    Choose Data From City
    waiting choose from city appears
    choose city Toronto
    click to city
    waiting choose to city appears
    choose city otawa
    choose class
    waiting choose class appears
    choose business
    choose start date
    waiting choose start date appears
    choose 1 august
    choose end date
    waiting choose end date appears
    choose 22 august
    choose flight and hotel
    click book
    wait price page appears
    choose price
    click Confirm
    Close Flight Application