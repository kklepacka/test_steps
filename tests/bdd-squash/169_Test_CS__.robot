*** Settings ***
Documentation    Test_CS_,
Metadata         ID                           169
Metadata         Reference                    025
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test_CS_,
    [Documentation]    Test_CS_,

    Given je suis sur la page d'accueil
    When je saisis une chaine de caractères : ,
    And je clique sur Entrer
    Then des résultats de la recherche s'affichent


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_169_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_169_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_169_SETUP_VALUE} =    Get Variable Value    ${TEST_169_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_169_SETUP_VALUE is not None    Run Keyword    ${TEST_169_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_169_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_169_TEARDOWN}.

    ${TEST_169_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_169_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_169_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_169_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
