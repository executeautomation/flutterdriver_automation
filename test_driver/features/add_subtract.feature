Feature: AddFeature
  Test add features


  Scenario: Test Plus feature of the app
    Given I test the initial state of the app
    And I click the plus button
    Then I see if the value is "1"



  Scenario: Test Subtract feature of the app
    Given I test the initial state of the app with value as
    And I click the plus button
    And I click the plus button
    And I click subtract button
    Then I see if the value is "1"    