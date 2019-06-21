*** Settings ***
Library           SeleniumLibrary
Library           ../Common/Common_library.py
Library           FakerLibrary    locale=en_US
Resource          ../Common/Common_resource.robot
Resource          ../PageObjects/Header_objects.robot
Resource          ../PageObjects/HomePage_objects.robot
Resource          ../PageObjects/AddressesPage_objects.robot
Resource          ../PageObjects/SignInPage_objects.robot
Resource          ../TestResources/Addresses_resource.robot

*** Variables ***
&{Credential}     email=tees@tees.tees    password=tees

*** Test Cases ***
Enter And Save New Address
    [Documentation]    Validating if user can enter and save a new address
    [Tags]    Critical
    Sign In As    ${Credential}[email]    ${Credential}[password]
    Open New Address Entry Page
    Enter And Save New Address
    Validate The Address Is Saved
