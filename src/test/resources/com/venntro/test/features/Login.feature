Feature: Verifying the login functionality
  In order to log in to herokuapp
  As a customer
  I want to Enter user credentials

  @login
  Scenario Outline: Test Authentication Section with valid and invalid Credentials
    Given I open "<browser>"
    When I navigate "loginurl"
    And I enter "username" as "<UserName>"
    And I enter "password" as "<Password>"
    When I click on "loginButton"
    Then Check the "<ActualResult>" with "<ExpectedResult>"
    And I close the browser

    Examples: 
      | browser | UserName | Password             | ActualResult     | ExpectedResult                |
      | Mozilla | tomsmith | SuperSecretPassword! | successfullLogin | You logged into a secure area |
      | Mozilla | tom      | smith                | failureLogin     | Your username is invalid      |
      | Chrome  | tomsmith | GoodPassword         | failureLogin     | Your password is invalid      |
