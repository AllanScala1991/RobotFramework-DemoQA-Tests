*** Settings ***
Resource  ../../Resources/global.robot
Resource  ../../Resources/Elements/resource.robot
Test Setup  Access Page
Test Teardown  Close Window

*** Test Cases ***
Should Validate Text Box
    Access Text Box
    Fill in all fields
    Validate Result
