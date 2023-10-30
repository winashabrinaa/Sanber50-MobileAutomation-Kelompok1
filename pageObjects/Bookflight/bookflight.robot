*** Settings ***
Resource            ../base.robot
Variables            bookflight_locator.yaml




Library    AppiumLibrary

*** Keywords ***
Click Book for menu
    Wait Until Page Contains Element    ${Searchmenubook}
    Tap                                 ${Searchmenubook}
Click Round Trip
    Wait Until Page Contains Element    ${round_trip}
    Tap                                 ${round_trip}
Choose Data From City
    Tap                                 ${tap_fromcity}
    Wait Until Page Contains Element    ${tap_fromcitytoronto}
    Click Element                       ${tap_fromcitytoronto}
Choose Data To City
    Tap                                 ${tap_tocity}
    Wait Until Page Contains Element    ${tap_tocityparis}
    Click Element                       ${tap_tocityparis}
Choose Data Class
    Tap                                 ${tap_class}
    Wait Until Page Contains Element    ${tap_classbusiness}
    Click Element                       ${tap_classbusiness}
Picklist Startdate Flight
    Tap                                 ${startdate}
    Wait Until Element Is Visible       ${klikstartdate}
    Click Element                       ${okstartdate}
Picklist Enddate Flight
    Tap                                 ${enddate}
    Wait Until Element Is Visible       ${klikenddate}
    Click Element                       ${okenddate}
Choose radio Button
    Click Button                        ${flighthotel}
Choose checkbox
    Wait Until Page Contains Element    ${checkboxday}
    Click Element                       ${checkboxday}
Click Book for bookflight
    Wait Until Page Contains Element    ${bookflight}
    Tap                                 ${bookflight}
Choose Price to Confirm Booking
    Wait Until Page Contains Element    ${price}
    Click Element                       ${price}
Click Confirm
    Wait Until Page Contains Element    ${buttonprice}
    Tap                                 ${buttonprice}
Verify Page Booked
    Wait Until Element Is Visible       ${booked}

    