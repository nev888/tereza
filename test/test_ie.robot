*** Settings ***
Documentation     Example using the space separated format.
Library           OperatingSystem

*** Variables ***
${MESSAGE}        Hello, world!

*** Test Cases ***
My Test
    [Documentation]    Example test.
    Log    ${MESSAGE}
    My Keyword     ${MESSAGE}

My Test2
    [Documentation]    Example test.
    Log    ${MESSAGE}
    My Keyword     ${MESSAGE}
    
*** Keywords ***
My Keyword
    [Arguments]    ${message}
    ${greet}    Set Variable  Hello, world!
    Should Be Equal    ${greet}  ${message}
