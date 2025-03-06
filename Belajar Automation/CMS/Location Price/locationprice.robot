*** Settings ***
Library    SeleniumLibrary
Resource    ../../../resources/common_variable.resource
Resource    ../../../resources/common_keyword.resource


*** Test Cases ***
User access CMS
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    ${idsigninemail} 
    Input Text    ${idsigninemail}     ${emailuser} 
    Input Password    ${idsigninpassword}    ${password}
    Click Button    id=signIn-signInButton
    Wait Until Element Is Visible    ${gambarkucing}
    Close Browser

User access location price
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    ${idsigninemail} 
    Input Text    ${idsigninemail}     ${emailuser} 
    Input Password    ${idsigninpassword}    ${password}
    Click Button    id=signIn-signInButton
    Wait Until Element Is Visible    ${gambarkucing}
    Click Element    //button[@class='MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeMedium css-16asuq9']//*[name()='svg']
    Wait Until Element Is Visible    //div[@class='mnl__scrollbar__root MuiBox-root css-5is5xo simplebar-scrollable-y']//span[@class='mnl__nav__item__title MuiBox-root css-0'][normalize-space()='Location']
    Click Element    //div[@class='mnl__scrollbar__root MuiBox-root css-5is5xo simplebar-scrollable-y']//span[@class='mnl__nav__item__title MuiBox-root css-0'][normalize-space()='Location']
    Wait Until Element Is Visible     //div[@class='mnl__scrollbar__root MuiBox-root css-5is5xo simplebar-scrollable-y']//span[@class='mnl__nav__item__title MuiBox-root css-0'][normalize-space()='Location Price']
    Click Element    //div[@class='mnl__scrollbar__root MuiBox-root css-5is5xo simplebar-scrollable-y']//span[@class='mnl__nav__item__title MuiBox-root css-0'][normalize-space()='Location Price']
    Wait Until Element Is Visible    id=backoffice-location-price-new-price-btn
    Close Browser

User search location price
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    ${idsigninemail} 
    Input Text    ${idsigninemail}     ${emailuser} 
    Input Password    ${idsigninpassword}    ${password}
    Click Button    id=signIn-signInButton
    Wait Until Element Is Visible    ${gambarkucing}
    Click Element    //button[@class='MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeMedium css-16asuq9']//*[name()='svg']
    Wait Until Element Is Visible    //div[@class='mnl__scrollbar__root MuiBox-root css-5is5xo simplebar-scrollable-y']//span[@class='mnl__nav__item__title MuiBox-root css-0'][normalize-space()='Location']
    Click Element    //div[@class='mnl__scrollbar__root MuiBox-root css-5is5xo simplebar-scrollable-y']//span[@class='mnl__nav__item__title MuiBox-root css-0'][normalize-space()='Location']
    Wait Until Element Is Visible     //div[@class='mnl__scrollbar__root MuiBox-root css-5is5xo simplebar-scrollable-y']//span[@class='mnl__nav__item__title MuiBox-root css-0'][normalize-space()='Location Price']
    Click Element    //div[@class='mnl__scrollbar__root MuiBox-root css-5is5xo simplebar-scrollable-y']//span[@class='mnl__nav__item__title MuiBox-root css-0'][normalize-space()='Location Price']
    Wait Until Element Is Visible    id=backoffice-location-price-new-price-btn
    Input Text    id=backoffice-location-prices-search    text=test alvin
    Wait Until Element Is Visible    id=backoffice-locationPrice-table-locationZoneName-text-table
    Close Browser