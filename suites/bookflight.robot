*** Settings ***
Resource                 ../pageObjects/Bookflight/bookflight.robot
Resource                 ../pageObjects/Base/base2.robot
Resource                 ../pageObjects/homePage/homePage.robot



*** Test Case ***
User Should Be Able To Bookflight        
    Click Book for menu
    Click Round Trip
    Choose Data from City
    Choose Data to City
    Choose Data Class
    Picklist Startdate Flight
    Picklist Enddate Flight
    Choose radio Button
    Choose checkbox
    Click Book for bookflight
    Choose Price to Confirm Booking
    Click Confirm
    Verify Page Booked
    