*** Settings ***
Library    Browser
Library    SeleniumLibrary
*** Variables ***
&{homeLocator}    title=//h1/a[@href="https://sut-test-adrian.squashcloud.io/"]
...    search=//input[@placeholder='Rechercher']

*** Keywords ***
Check home page
    Get Element    ${homeLocator}[title]    #Check if the h1 title is the logo of the website , it's only h1 on the home pageJ
Enter search term
    Fill Text   ${homeLocator}[search]    Lola
Validate
    Keyboard Key    press    Enter