*** Settings ***
Documentation    Test_login
Metadata         ID                           140
Metadata         Automation priority          23
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test_login
    [Documentation]    Test_login

    Given je suis sur la page d'accueil
    When Je clique sur le bouton connexion
    And Je saisi mon login
    And Je saisi mon mdp
    And Je clique sur Connexion
    Then Je verifie que je suis connectée


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_140_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_140_SETUP} will be run after ${TEST_SETUP}.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_140_SETUP is not None    Run Keyword    ${TEST_140_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_140_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_140_TEARDOWN}.

    If    $TEST_140_TEARDOWN is not None    Run Keyword    ${TEST_140_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
