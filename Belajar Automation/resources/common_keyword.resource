*** Settings ***
Library    SeleniumLibrary
Resource    ./common_variable.resource


*** Keywords ***

#access online receipt
access-online-receipt
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    receipt-parkingSlipNumber
    Close Browser

#see location name
see-location-name
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    receipt-locatioName
    Close Browser

#see total amount
see-total-amount
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    receipt-totalAmount
    Close Browser

#see parking slip
see-parking-slip
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    receipt-parkingSlipNumber
    Close Browser

#see stars review
see-stars-review
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    receipt-review-star
    Close Browser

#expand parking details
expand-parking-details
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    receipt-textParkingDetails
    Click Element    receipt-textParkingDetails
    Wait Until Element Is Visible    receipt-vehicleNumber-text
    Close Browser

#minimize parking details
minimize-parking-details
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    receipt-textParkingDetails
    Click Element    receipt-textParkingDetails
    Wait Until Element Is Visible    receipt-vehicleNumber-text
    Click Element    receipt-textParkingDetails
    Close Browser

#see vehicle type
see-vehicle-type
    Open Browser    ${URL}   ${BROWSER}
    Wait Until Element Is Visible    receipt-textParkingDetails
    Click Element    receipt-textParkingDetails
    Wait Until Element Is Visible    receipt-vehicleType-text
    Close Browser