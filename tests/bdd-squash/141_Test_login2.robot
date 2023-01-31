*** Settings ***
Documentation    Test_login2
Metadata         ID                           141
Metadata         Automation priority          1
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test_login2
    [Documentation]    Test_login2

    Given je suis sur la page d'accueil "My Store"
    When Je clique sur le bouton [Connexion]
    And Je saisi mon 'login'
    And Je saisi mon `mdp`
    And Je clique sur {Connexion}
    Then Je vérifie que dès maintenant je suis connectée


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_141_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_141_SETUP} will be run after ${TEST_SETUP}.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_141_SETUP is not None    Run Keyword    ${TEST_141_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_141_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_141_TEARDOWN}.

    If    $TEST_141_TEARDOWN is not None    Run Keyword    ${TEST_141_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
