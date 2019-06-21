*** Settings ***
Library           SeleniumLibrary
Library           ../Common/Common_library.py
Resource          ../Common/Common_resource.robot
Resource          ../TestResources/HomePage_resource.robot
Resource          ../PageObjects/HomePage_objects.robot

*** Test Cases ***
Validate Login Page
    [Documentation]    Validating if user can access the home page
    [Tags]    Critical
    Access Addressbook Home Page
    Validate Home Page Content
