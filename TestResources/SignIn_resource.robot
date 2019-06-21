*** Keywords ***
Access SignIn Page And Sign In
    [Arguments]    ${email}    ${password}
    Sign In As    ${email}    ${password}

Validate User Is Signed In
    [Arguments]    ${email}
	Wait Until Element Is Visible    ${EmailIDXPath}
    Element Should Contain    ${EmailIDXPath}    ${email}

Validate Error Message Is Displayed
    Wait Until Element Is Visible    ${SignInErrorXPath}
    Element Should Contain    ${SignInErrorXPath}    ${SignInErrorText}
