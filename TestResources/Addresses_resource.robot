*** Keywords ***
Enter And Save New Address
    ${fName}=    FakerLibrary.First Name
    ${lName}=    FakerLibrary.Last Name
    ${Address}=    FakerLibrary.Address
    ${City}=    FakerLibrary.City
    Set Global Variable    ${fName}
    Set Global Variable    ${lName}
    Set Global Variable    ${City}
    Enter First Name    ${fName}
    Enter Last Name    ${lName}
    Enter Address One    ${Address}
    Enter City    ${City}
    Enter Zipcode    11223
    Select Country    can
    #Enter Birthday    1990-01-02
    Enter Age    29
    Select Image    ${root}\\TestData\\ProfilePic.JPG
    Save New Address

Delete The Address
    [Arguments]    ${firstName}
    Click on Delete Button in Address Page    ${firstname}
    Handle Alert
    Wait Until Page Contains    Addresses

Edit The Address
    [Arguments]    ${firstName}
    Click On Edit Button In Address Page    ${firstName}
    Wait Until Page Contains    Editing Address
    ${City}=    FakerLibrary.City
    Set Global Variable    ${City}
    Enter City    ${City}
    Update The New Address

Open Addresses Page
    Wait Until Element Is Visible    ${AddressesXPath}
    Click On Addresses
    Wait Until Element Is Visible    ${NewAddressLinkXPath}

Open New Address Entry Page
    Wait Until Element Is Visible    ${AddressesXPath}
    Click On Addresses
    Wait Until Element Is Visible    ${NewAddressLinkXPath}
    Click On New Address Link
    Wait Until Element Is Visible    ${NewAddressSubmitXPath}

Validate The Address Is Saved
    Wait Until Element Is Visible    ${AddressesXPath}
    Click On Addresses
    Wait Until Page Contains    ${fName}
    Wait Until Page Contains    ${City}

Validate The Address Is Deleted
    Page Should Not Contain    ${fName}
    Element Should Contain    ${DeleteConfirmationMsgXPath}    Address was successfully destroyed.

Validate The Page Contains The Address
    Wait Until Page Contains    ${fName}
    Wait Until Page Contains    ${City}

View The Address
    [Arguments]    ${firstName}
    Click On Show Button In Address Page    ${firstName}
    Wait Until Page Contains    First name
