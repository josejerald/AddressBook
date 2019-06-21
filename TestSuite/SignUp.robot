*** Settings ***
Library           SeleniumLibrary
Library           FakerLibrary    locale=en_US
Resource          ../Common/Common_resource.robot
Resource          ../PageObjects/Header_objects.robot
Resource          ../PageObjects/HomePage_objects.robot
Resource          ../PageObjects/SignIn_objects.robot
Resource          ../PageObjects/SignUp_objects.robot
Resource          ../TestResources/SignUp_resource.robot

*** Test Cases ***
Validating New User Sign Up
    [Documentation]    Validating if a new user can signup
    [Tags]    Critical
    Navigate To Sign Up Page
    ${email}=    FakerLibrary.Email
    Enter Credentials And Sign Up    ${email}    password
    Close All Browsers
    Validate User Can Login    ${email}    password
