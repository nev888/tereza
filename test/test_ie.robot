*** Settings ***
Documentation     Example using the space separated format.
Library           OperatingSystem

*** Variables ***
${MESSAGE}        Hello, world!

*** Test Cases ***
My Test
    [Documentation]    Example test.
    [Tags]  Search
    Log    ${MESSAGE}
    My Keyword     ${MESSAGE}

My Test2
    [Documentation]    Example test.
    [Tags]  Smoke
    Log    ${MESSAGE}
    My Keyword     ${MESSAGE}
    
*** Keywords ***
My Keyword
    [Arguments]    ${message}
    ${greet}    Set Variable  Hello, world!
    Should Be Equal    ${greet}  ${message}
