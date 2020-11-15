*** Settings ***
Documentation     Example using the space separated format.
Library           OperatingSystem

*** Variables ***
${MESSAGE}        Hello, world!

*** Test Cases ***
My Test
    [Documentation]    Example test.
    [Tags]  Smoke  Search
    Log    ${MESSAGE}
    My Keyword     ${MESSAGE}


*** Keywords ***
My Keyword
    [Arguments]    ${message}
    ${greet}    Hello, world!
    Should Be Equal    ${greet}  ${message}
