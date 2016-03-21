Feature: To test contact form works when there are no errors

  Scenario: Check form is validated where there no errors
    Given I am on my zoo website
    When I click on contact link
    And populate contact form
    Then I should be on contact confirmation page
