Feature: To handle the checkbox under dynamic controls
  
  In order to handle a checkbox
  As a Tester
  I want to test the checkbox under dynamic controls

  @checkbox
  Scenario Outline: verifying the remove functionality of the checkbox
    Given I open "<browser>"
    When I navigate "dynamic_control_url"
    And I click on "removeButton"
    Then Check the "<ActualResult>" with "<ExpectedResult>"
    And I close the browser

    Examples: 
      | browser | ActualResult   | ExpectedResult |
      | Chrome  | SuccessMessage | It's gone!     |

  @checkbox
  Scenario Outline: verifying the add functionality of the checkbox
    Given I open "<browser>"
    When I navigate "dynamic_control_url"
    And I click on "removeButton"
    And I click on "addButton"
    Then Check the "<ActualResult>" with "<ExpectedResult>"
    And I close the browser

    Examples: 
      | browser | ActualResult        | ExpectedResult |
      | Mozilla | ConfirmationMessage | A checkbox     |
