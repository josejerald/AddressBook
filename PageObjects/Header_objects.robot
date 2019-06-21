*** Variables ***
${HeaderHomeXPath}    xpath://*[@id="navbar"]/div[1]/a[1]
${HeaderSignInXPath}    xpath://*[@id="sign-in"]
${EmailIDXPath}    xpath://*[@id="navbar"]/div[2]/span
${SignOutXPath}    xpath:////*[@id="navbar"]/div[1]/a[3]
${AddressesXPath}    xpath://*[@id="navbar"]/div[1]/a[2]

*** Keywords ***
Click On Sign Out
    Click Element    ${SignOutXPath}

Click On Home
    Click Element    ${HeaderHomeXPath}

Click On Sign In
    Click Element    ${HeaderSignInXPath}

Click On Addresses
    Click Element    ${AddressesXPath}
