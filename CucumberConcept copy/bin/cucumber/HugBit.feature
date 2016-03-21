Feature: Viewing and Searching Users in the Community
  As a user I want to be able to find other users in the community

  Background: Navigate to the Community Screen
    Given I am on the Main Menu screen
    Then I tap the Community icon

  @community_main
  Scenario: List of Users with Filter Set to Everyone
    Given I expect to be taken to the Community screen
    Then I expect to see the filter set to Everyone
    Then I expect to see a list of users

  @community_followers
  Scenario: List of Users with Filter Set to Followers
    Given I am on the Community screen
    And I tap the Community with the down facing arrow in the header
    And the dropdown menu opens
    When I select Followers from the dropdown menu
    Then I expect the Community screen to refresh
    And I expect to see the list of my followers

  @community_no_followers
  Scenario: List of Users with Filter Set to Followers When No Followers
    G​iven I am on the Community screen

    And I tap the Community with the down facing arrow in the header
    And the dropdown menu opens
    When I select Followers from the dropdown menu
    And I don't have any followers
    Then I expect to see a placeholder image with the text "You don't have any followers yet"

  @community_following
  Scenario: List of Users with Filter Set to Following
    Given I am on the Community screen
    And I tap the Community with the down facing arrow in the header
    And the dropdown menu opens
    When I select Following from the dropdown menu
    Then I expect the Community screen to refresh
    And I expect to see the list of my followings

  @community_no_following
  Scenario: List of Users with Filter Set to Following When No Following
    Given I am on the Community screen
    And I tap the Community with the down facing arrow in the header
    And the dropdown menu opens
    When I select Following from the dropdown menu
    And I don't have any followings
    Then I expect to see a placeholder image with the text "You are not following anyone. Find users to follow

  @community_highest_rated
  Scenario: List of Users with Filter Set to Highest Ranked
    G​iven I am on the Community screen
    A​nd I tap the Community with the down facing arrow in the header

    And the dropdown menu opens
    When I select Highest Ranked from the dropdown menu
    Then I expect the Community screen to refresh
    And I expect to see the list of highest ranked users in the community

  @community_best
  Scenario: List of Users with Filter Set to Best Matched
    Given I am on the Community screen
    And I tap the Community with the down facing arrow in the header
    And the dropdown menu opens
    When I select Best Matched from the dropdown menu
    Then I expect the Community screen to refresh
    And I expect to see the list of users with the highest percentage

  @community_user_list
  Scenario: Scrolling Through the User List
    Given I am on the Community screen
    And I see the list of other users
    When I scroll down on Community Screen
    And I see more users being loaded
    And I see the Main Menu button rolls down
    And I scroll up on Community Screen
    Then I expect to see the list of loaded users
    And I expect the Main Menu button to roll up

  @community_profiles
  Scenario: Accessing User Profiles from Community
    Given I am on the Community screen
    And the filter is set to everyone
    And the list of users is loaded
    When I tap a user profile picture
    And I get redirected to the user profile screen
    And I hit the Back button in the upper left hand corner
    Then I expect to be taken back to the Community screen

  @community_search
  Scenario: Searching Users in Community
    Given I am on the Community screen
    And I tap inside the Search textbox
    When I use the native keyboard to type in a username "abcd"
    Then I expect the search to be invoked
    And I expect to see the list of users satisfying the search criteria
    And I expect to see an empty screen if no user matches the search criteria

  @community_cancel_search
  Scenario: Cancelling Search in Community
    Given I am on the Community screen
    And I tap inside the Search textbox
    When I tap Cancel at the right hand corner of the search textbox
    Then I expect the Search textbox to expand
    And I expect the Cancel button to disappear

  @community_change_search
  Scenario: Changing Search Criteria in Community
    Given I am on the Community screen
    And I tap inside the Search textbox
    And I use the native keyboard to type in a username "abcd"
    And the search is invoked
    And the search results are returned
    When I delete the text in the Search textbox
    Then I expect the search results to be reset to the original users list

  @community_change_search_1
  Scenario: Changing Search Criteria in Community
    Given I am on the Community screen
    And I tap inside the Search textbox
    And I use the native keyboard to type in a username "abcd"
    And the search is invoked
    And the search results are returned
    When I hit the X icon inside the Search textbox
    Then I expect the search results to be reset to the original users list

  @community_navigate_from_community_to_main
  Scenario: Navigating From Community to Main Menu
    Given I am on the Community screen
    When I hit the Main Menu button at the lower right hand corner of the screen
    Then I expect the Main Menu slide over
