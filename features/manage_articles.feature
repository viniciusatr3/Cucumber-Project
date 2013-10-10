Feature: Manage Articles
  In order to make a blog
  As an author
  I want to create and manage articles

  Background: Create User
    Given I am a user email "vinicius.cocao@do.com" and password "123456789"
    When I go to the login page
    And I fill in "Email" with "vinicius.cocao@do.com"
    And I fill in "Password" with "123456789"
    And I press "Sign in"

  Scenario: Article List
    Given I have articles titled Meepo, Chen
    When I go to the list of articles
    Then I should see "Meepo"
    And I should see "Chen"

  Scenario: Basic List
    Given I have basics named Twerk, Fart, Read
    When I go to the list of basics
    Then I should see "Twerk"
    And I should see "Fart"
    And I should see "Read"

  Scenario: Edit Article
    Given I have articles titled Twerk, Fart, Read
    When I go to the list of articles
    And I follow "edit_2"
    And I fill in "Title" with "Shake"
    And I fill in "Content" with "How to Shake"
    And I press "Update Article"

  Scenario: Show Article
    Given I have articles titled Twerk, Far, Read
    When I go to the list of articles
    And I follow "show_2"
    And I follow "Back"

  @javascript
  Scenario: Delete Article
    Given I have articles titled Twerk
    And I have articles titled Fart
    When I go to the list of articles
    Then I should see "Destroy"
    And I follow "delete_2"
    And I should see javascript and press OK
    And I should not see "Fart"

