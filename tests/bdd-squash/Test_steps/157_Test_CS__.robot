*** Settings ***
Documentation    Test_CS_\
Metadata         ID                           157
Metadata         Reference                    011
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test_CS_\
    [Documentation]    Test_CS_\

    Given je suis sur la page d'accueil
    When je saisis une chaine de caractères : \
    And je clique sur Entrer
    Then des résultats de la recherche s'affichent


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_157_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_157_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_157_SETUP_VALUE} =    Get Variable Value    ${TEST_157_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_157_SETUP_VALUE is not None    Run Keyword    ${TEST_157_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_157_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_157_TEARDOWN}.

    ${TEST_157_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_157_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_157_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_157_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
