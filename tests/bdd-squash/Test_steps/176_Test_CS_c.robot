*** Settings ***
Documentation    Test_CS_ç
Metadata         ID                           176
Metadata         Reference                    033
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test_CS_ç
    [Documentation]    Test_CS_ç

    Given je suis sur la page d'accueil
    When je saisis une chaine de caractères : ç
    And je clique sur Entrer
    Then des résultats de la recherche s'affichent


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_176_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_176_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_176_SETUP_VALUE} =    Get Variable Value    ${TEST_176_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_176_SETUP_VALUE is not None    Run Keyword    ${TEST_176_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_176_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_176_TEARDOWN}.

    ${TEST_176_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_176_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_176_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_176_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
