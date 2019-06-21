*** Settings ***
Library           SeleniumLibrary
Library           ../Common/Common_library.py
Resource          ../Common/Common_resource.robot
Resource          ../PageObjects/Header_objects.robot
Resource          ../PageObjects/HomePage_objects.robot
Resource          ../PageObjects/SignInPage_objects.robot
Resource          ../TestResources/SignIn_resource.robot

*** Variables ***
&{Credential}     email=tees@tees.tees    password=tees

*** Test Cases ***
Sign In With Valid Email And Password
    [Documentation]    Validating if a user can login with valid email and password
    [Tags]    Critical
    Access SignIn Page And Sign In    ${Credential}[email]    ${Credential}[password]
    Validate User Is Signed In     ${Credential}[email]

Sign In With Invalid Email
    [Documentation]    Validating if user is restricted from signing in with email not signup up
    [Tags]    Critical
    Access SignIn Page And Sign In    junk@junk.junk    ${Credential}[password]
    Validate Error Message Is Displayed

Sign In With Invalid Password And Valid Email
    [Documentation]    Validating if user is restricted from signing in with a valid email but wrong password
    [Tags]    Regression
    Access SignIn Page And Sign In    ${Credential}[email]    $junk
    Validate Error Message Is Displayed
