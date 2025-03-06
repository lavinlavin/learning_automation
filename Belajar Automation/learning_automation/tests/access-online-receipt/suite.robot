*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/common_variable.resource
Resource    ../../resources/common_keyword.resource


*** Test Cases ***
User access online receipt
    access-online-receipt

User can see location name
    see-location-name

User can see total ammount
    see-total-amount

User can see parking slip
    see-parking-slip

User can see stars review
    see-stars-review

User can expand parking details
    expand-parking-details

User can minimize parking details
    minimize-parking-details

User can see vehicle type
    see-vehicle-type