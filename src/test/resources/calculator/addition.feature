#@REQ_CALC-7931
@TEST_TES-48
Feature:  As a user, I can add two numbers

@id:1
Scenario: simple integer addition
        Given I have entered 1 into the calculator
        And I have entered 2 into the calculator
        When I press add
        Then the result should be 3 on the screen

@id:2
Scenario: negative integer addition
        Given I have entered -1 into the calculator
        And I have entered 2 into the calculator
        When I press add
        Then the result should be 1 on the screen

@id:3
Scenario Outline: sum of two positive numbers
        Given I have entered <input_1> into the calculator
        And I have entered <input_2> into the calculator
        When I press <button>
        Then the result should be <output> on the screen

          Examples:
            | input_1 | input_2 | button | output |
            | 20      | 30      | add    | 50     |
            | 2       | 5       | add    | 7      |
            | 0       | 40      | add    | 40     |
            | 4       | 50      | add    | 54     |
            | 5       | 50      | add    | 55     |