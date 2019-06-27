*** Variables ***
${NewAddressLinkXPath}    xpath:/html/body/div/a
${FirstNameXPath}    xpath://*[@id="address_first_name"]
${LastNameXPath}    xpath://*[@id="address_last_name"]
${Address1XPath}    xpath://*[@id="address_street_address"]
${Address2XPath}    xpath://*[@id="address_secondary_address"]
${CityXPath}      xpath://*[@id="address_city"]
${StateXPath}     xpath://*[@id="address_state"]
${ZipCodeXPath}    xpath://*[@id="address_zip_code"]
${CountryUSXPath}    xpath://*[@id="address_country_us"]
${CountryCANXPath}    xpath://*[@id="address_country_canada"]
${BirthdayXPath}    xpath://*[@id="address_birthday"]
${ColorXPath}     xpath://*[@id="address_color"]
${AgeXPath}       xpath://*[@id="address_age"]
${WebsiteXPath}    xpath://*[@id="address_website"]
${PictureXPath}    xpath://*[@id="address_picture"]
${PhoneXpath}     xpath://*[@id="address_phone"]
${InteresrClimbXpath}    xpath://*[@id="address_interest_climb"]
${InterestDanceXPath}    xpath://*[@id="address_interest_dance"]
${InterestReadXPath}    xpath://*[@id="address_interest_read"]
${NotesXPath}     xpath://*[@id="address_note"]
${NewAddressSubmitXPath}    xpath://*[@class="btn btn-primary"]
${AddressListXPath}    xpath:/html/body/div/a
${UpdateAddressXPath}    xpath://input[@class="btn btn-primary"]
${DeleteConfirmationMsgXPath}    xpath:/html/body/div/div

*** Keywords ***
Click On New Address Link
    Click Element    ${NewAddressLinkXPath}

Click On Edit Button In Address Page
    [Arguments]    ${firstName}
    Click Element    xpath://*[text()="${firstName}"]//following::a[2]

Click On Delete Button In Address Page
    [Arguments]    ${firstName}
    Click Element    xpath://*[text()="${firstName}"]//following::a[3]

Click On Show Button In Address Page
    [Arguments]    ${firstName}
    Click Element    xpath://*[text()="${firstName}"]//following::a[1]

Enter First Name
    [Arguments]    ${text}
    Input Text    ${FirstNameXPath}    ${text}

Enter Last Name
    [Arguments]    ${text}
    Input Text    ${LastNameXPath}    ${text}

Enter Address One
    [Arguments]    ${text}
    Input Text    ${Address1XPath}    $${text}

Enter Address Two
    [Arguments]    ${text}
    Input Text    ${Address2XPath}    ${text}

Enter City
    [Arguments]    ${text}
    Input Text    ${CityXPath}    ${text}

Enter Zipcode
    [Arguments]    ${text}
    Input Text    ${ZipCodeXPath}    ${text}

Enter Birthday
    [Arguments]    ${text}
    Input Text    ${BirthdayXPath}    1990
    Press Keys    ${BirthdayXPath}    \\09
    Input Text    ${BirthdayXPath}    06
    Press Keys    ${BirthdayXPath}    \\09
    Input Text    ${BirthdayXPath}    02

Enter Age
    [Arguments]    ${text}
    Input Text    ${AgeXPath}    ${text}

Select State From List
    [Arguments]    ${text}
    Select From List By Label    ${StateXPath}    ${text}

Select Country
    [Arguments]    ${value}
    Run Keyword If    '${value}'=='us'    Click Element    ${CountryUSXPath}
    Run Keyword If    '${value}'=='can'    Click Element    ${CountryCANXPath}

Select Image
    [Arguments]    ${filePath}
    Choose File    ${PictureXPath}    ${filePath}

Save New Address
    Click Element    ${NewAddressSubmitXPath}

Update The New Address
    Click Element    ${UpdateAddressXPath}
