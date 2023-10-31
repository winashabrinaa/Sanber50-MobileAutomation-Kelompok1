*** Settings ***
Resource                 ../pageObjects/Search/searchflight.robot
Resource                 ../pageObjects/Base/base2.robot
Resource                 ../pageObjects/homePage/homePage.robot



*** Test Cases ***
User Should Be Able To search
    Click search for menu
    verify search in page Appears
    verify search Succesfully
    Close Application