Feature: Handling dynamic loading section
  
  In order handle dynamic loading elements
  As a user
  I want to handle dynamic loading section and verify the functionality of Example 1 whether it is displaying Hello World! message or not

  Scenario Outline: verify the functionality of Example 1 link
    Given I open "<browser>"
    When I navigate "dynamic_loading_section_url"
    And I click on "example1Link"
    And I click on "startButton"
    Then Check the "hiddenMessage" with "Hello World!"
    And I close the browser

    Examples: 
      | browser |
      | Mozilla |
