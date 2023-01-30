*** Settings ***
Documentation    Test1
Metadata         ID                           135
Metadata         Automation priority          2
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test1
    [Documentation]    Test1

    Given je suis sur la page d'accueil
    And je clique sur [Connexion]
    Then la page de connexion s'affiche


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_135_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_135_SETUP} will be run after ${TEST_SETUP}.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_135_SETUP is not None    Run Keyword    ${TEST_135_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_135_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_135_TEARDOWN}.

    If    $TEST_135_TEARDOWN is not None    Run Keyword    ${TEST_135_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
