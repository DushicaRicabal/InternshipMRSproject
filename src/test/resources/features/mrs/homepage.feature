@regression
Feature: Testing Categories on MRS

  Background:
    Given the user is on the MRS website
  Scenario Outline: Test "<category>" category
    When the user navigates to the "<category>" category
    Then the user should see the list of items in the "<category>" category
    And the user should be able to browse through the items
    Examples:
      | category  |
      | All       |
      | Vaccines  |
      | Drugs     |
      | Tools     |
      | Machinery |
