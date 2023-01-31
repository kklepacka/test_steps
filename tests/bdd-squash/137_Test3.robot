*** Settings ***
Documentation    Test3
Metadata         ID                           137
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test3
    [Documentation]    Test3

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
    ...                You can define the ${TEST_137_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_137_SETUP} will be run after ${TEST_SETUP}.

    IF    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_137_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_137_TEARDOWN}.

    IF    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
