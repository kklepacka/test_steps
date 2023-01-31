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

    &{docstrings} =    Retrieve Docstrings

    Given je suis sur la page d'accueil
    When Je clique sur le bouton connexion
    And Je saisi mon login
    And Je saisi mon mdp
    And Je clique sur Connexion
    Then Je verifie que je suis connectée et je vois le texte : "${docstrings}[docstring_1]"


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

Retrieve Docstrings
    [Documentation]    Retrieves Squash TM's docstrings and stores them in a dictionary.
    ...
    ...                For instance, two docstrings have been defined in Squash TM,
    ...                the first one containing the string
    ...                "I am the
    ...                FIRST    docstring",
    ...                the second one containing the string "I am the second docstring"
    ...
    ...                First, this keyword retrieves values and converts them to an inline string :
    ...                ${docstring_1} =    Set Variable    I am the\nFIRST\tdocstring"
    ...
    ...                Then, this keyword stores the docstrings into the &{docstrings} dictionary
    ...                with each docstring name as key, and each docstring value as value :
    ...                ${docstrings} =    Create Dictionary    docstring_1=${docstring_1}    docstring_2=${docstring_2}

    ${docstring_1} =    Set Variable    112233445566778899 Saturn V rocket’s first stage carries 203,400 gallons (770,000 liters) of kerosene fuel and 318,000 gallons (1.2 million liters) of liquid oxygen needed for combustion. At liftoff, the stage’s five F-1 rocket engines ignite and produce 7.5 million pounds of thrust.\n\n//// 1111 ^^^^ 2222 — — 3333 !!!! 4444 &&&& 5555 %%%% 6666 ???? 7777\n\nTo replace those goofy quantities with the far less retarded metric system (even though liters are considered part of the metric system they are the same as cubic deci-meters) you would say 770 cubic meters of kerosene {abbreviated as m3} and 1,204 m3 of liquid O2 [O2 is the symbol for oxygen]. We would also say it produced 33,600,000 newtons of force <abbreviated as N>.\n\n— — 3333 ~~~~ 9999 :::: 8888 ;;;; 6776 ```` 2332 ‘’’’ 3323 “””” 4343 @@@@\n\nTo add scientific notation {a way of writing numbers that allows you to write only as many digits `of specificity` as you would like} you can write 7.7 * 10 ^ 2 m3 of kerosene 1.204 * 10 ^ 3 m3 of O2 and 3.3 * 10 ^ 7 newtons.\n\n<<<< >>>> {{{{ }}}} (((( )))) [[[[ ]]]]\n\nAnother way to write scientific notation is to replace the “* 10 ^” with ‘E’ -/capital e\-. So our numbers would look like:s\n\n#### 7.7 E 2\n\n==== 1.2 E 3\n\n%%%% 3.3 E 7\n\n???? %%%% &&&& !!!! ^^^^ — — **** ++++ ====

    &{docstrings} =    Create Dictionary    docstring_1=${docstring_1}

    RETURN    &{docstrings}
