*** Variables ***
${browser}        Chrome
${root}           C:\\Dev Works\\Python\\RideProjects\\AddressBook

*** Keywords ***
Access Addressbook Home Page
    ${url}=    Get URL    ${env}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${HomePageTitleXPath}

Close Browser Windows
    Close All Browsers

Get URL
    [Arguments]    ${env}
    ${url}=    construct url    ${env}
    [Return]    ${url}

Navigate To Sign In Page
    Click Element    ${HeaderSignInXPath}
    Wait Until Element Is Visible    ${SignUpLinkXPath}

Sign In As
    [Arguments]    ${email}    ${password}
    Access Addressbook Home Page
    Navigate To Sign In Page
    Wait Until Element Is Visible    ${SignInEmailXPath}
    Enter Email Address In Sign In Page    ${email}
    Enter Password In Sign In Page    ${password}
    Click on Sign In Button
