*** Keywords ***
Open New Address Entry Page
    Wait Until Element Is Visible    ${AddressesXPath}
    Click On Addresses
    Wait Until Element Is Visible    ${NewAddressLinkXPath}
    Click On New Address Link
    Wait Until Element Is Visible    ${NewAddressSubmitXPath}

Enter And Save New Address
    ${fName}=    FakerLibrary.First Name
    ${lName}=    FakerLibrary.Last Name
    ${Address}=    FakerLibrary.Address
    Set Global Variable    ${fName}
    Set Global Variable    ${lName}
    Enter First Name    ${fName}
    Enter Last Name    ${lName}
    Enter Address One    ${Address}
    Enter City    Colorado
    Enter Zipcode    11223
    Select Country    can
    Enter Birthday    1990-01-02
    Enter Age    29
    Select Image    ${root}\\TestData\\ProfilePic.JPG
    Save New Address

Validate The Address Is Saved
    Wait Until Element Is Visible    ${AddressesXPath}
    Click On Addresses
    Wait Until Page Contains    ${fName}
