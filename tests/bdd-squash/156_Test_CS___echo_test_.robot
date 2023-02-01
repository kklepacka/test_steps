*** Settings ***
Documentation    Test_CS_${echo test}
Metadata         ID                           156
Metadata         Reference                    010
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test_CS_${echo test}
    [Documentation]    Test_CS_${echo test}

    Given je suis sur la page d'accueil
    When je saisis une chaine de caractères : ${echo test}
    And je clique sur Entrer
    Then des résultats de la recherche s'affichent


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_156_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_156_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_156_SETUP_VALUE} =    Get Variable Value    ${TEST_156_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_156_SETUP_VALUE is not None    Run Keyword    ${TEST_156_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_156_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_156_TEARDOWN}.

    ${TEST_156_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_156_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_156_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_156_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
