#@REQ_CALC-7935
@TEST_TES-53
Feature:  As a user, I can multiply two numbers

@id:1 @TES-52
Scenario: simple integer multiplication
        Given I have entered 3 into the calculator
        And I have entered 0 into the calculator
        When I press multiply
        Then the result should be 0 on the screen
        
@id:2 @TES-54
Scenario: negative integer multiplication
        Given I have entered -3 into the calculator
        And I have entered -1 into the calculator
        When I press multiply
        Then the result should be 3 on the screen