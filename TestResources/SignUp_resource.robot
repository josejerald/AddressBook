*** Keywords ***
Navigate To Sign Up Page
    Access Addressbook Home Page
    Navigate To Sign In Page
    Click On Sign Up Link In Sign In Page
    Wait Until Element Is Visible    ${SignUpEmailXPath}

Enter Credentials And Sign Up
    [Arguments]    ${email}    ${password}
    Enter Email Address In Sign Up Page    ${email}
    Enter Password In Sign Up Page    ${password}
    Click on Sign Up Button

Validate User Can Login
    [Arguments]    ${email}    ${password}
    Sign In As    ${email}    ${password}
