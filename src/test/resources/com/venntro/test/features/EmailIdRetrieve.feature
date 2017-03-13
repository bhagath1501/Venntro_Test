Feature: Retrieve the Email Id for Jason Doe
  
  In order to retrieve the email id for Jason Dow
  I want to access the Sortable Data table section

  @email
  Scenario: Retrieving the Email Id for Jason Doe prsent in the sortable data table section
    Given I open "Mozilla"
    When I navigate "SortableDataTableSection_url"
    Then Check the "RetrievedEmailId" with "jdoe@hotmail.com"
    And I close the browser
