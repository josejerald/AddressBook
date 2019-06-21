*** Variables ***
${SignUpEmailXPath}    xpath://*[@id="user_email"]
${SignUpPasswordXPath}    xpath://*[@id="user_password"]
${SignUpButtonXPath}    xpath://*[@id="new_user"]/div[3]/input
${SingInLinkXpath}    xpath://*[@id="new_user"]/div[4]/a

*** Keywords ***
Enter Email Address In Sign Up Page
    [Arguments]    ${email}
    Input Text    ${SignUpEmailXPath}    ${email}

Enter Password In Sign Up Page
    [Arguments]    ${password}
    Input Password    ${SignUpPasswordXPath}    ${password}

Click on Sign Up Button
    Click Element    ${SignUpButtonXPath}
