*** Variables ***
${SignInEmailXPath}    xpath://*[@id="session_email"]
${SignInPasswordXPath}    xpath://*[@id="session_password"]
${SignInButtonXPath}    xpath://*[@id="clearance"]/div/div/form/div[3]/input
${SignUpLinkXPath}    xpath://*[@id="clearance"]/div/div/form/div[4]/a
${SignInErrorXPath}    xpath:/html/body/div/div[1]
${SignInErrorText}    Bad email or password.

*** Keywords ***
Enter Email Address In Sign In Page
    [Arguments]    ${email}
    Input Text    ${SignInEmailXPath}    ${email}

Enter Password In Sign In Page
    [Arguments]    ${password}
    Input Password    ${SignInPasswordXPath}    ${password}

Click on Sign In Button
    Click Element    ${SignInButtonXPath}

Click On Sign Up Link In Sign In Page
    Click Element    ${SignUpLinkXPath}
