*** Variables ***
${homePageHeaderText}    Welcome to Address Book

*** Keywords ***
Validate Home Page Content
    Element Should Contain    ${HomePageTitleXPath}    ${homePageHeaderText}
