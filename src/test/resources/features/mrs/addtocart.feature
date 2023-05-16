@regression
Feature: Testing Adding Items to Cart for Different Categories on MRS

  Background:
    Given the user is on the MRS website

  Scenario Outline: Add one item to cart in "<category>" category
    When the user navigates to the "<category>" category
    And selects the "<item>" to add to the cart
    And clicks on the "Add to Cart" button
    Then the item should be added to the cart
    And the cart should display the added item
    Examples:
      | category  | item                    |
      | All       | Aspirine                |
      | Vaccines  | Pfizer                  |
      | Drugs     | Paracetamol             |
      | Tools     | Advanced Dissection Kit |
      | Machinery | LCD Digital Microscope  |