*** Settings ***
Test Teardown     Close All Browsers
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

Edit An Address
    [Documentation]    Validating if user can edit an address
    [Tags]    Critical
    Sign In As    ${Credential}[email]    ${Credential}[password]
    Open New Address Entry Page
    Enter And Save New Address
    Open Addresses Page
    Edit The Address    ${fName}
    Validate The Address Is Saved
    [Teardown]    Run Keywords    Open Addresses Page
    ...    AND    Delete The Address    ${fName}
    ...    AND    Close All Browsers

Delete An Address
    [Documentation]    Validating if user can delete an address
    [Tags]    Critical
    Sign In As    ${Credential}[email]    ${Credential}[password]
    Open New Address Entry Page
    Enter And Save New Address
    Open Addresses Page
    Delete The Address    ${fName}
    Validate The Address Is Deleted

Show An Address
    [Documentation]    Validating if user can delete an address
    [Tags]    Critical
    Sign In As    ${Credential}[email]    ${Credential}[password]
    Open New Address Entry Page
    Enter And Save New Address
    Open Addresses Page
    View The Address    ${fName}
    Validate The Page Contains The Address
    [Teardown]    Run Keywords    Open Addresses Page
    ...    AND    Delete The Address    ${fName}
    ...    AND    Close All Browsers
