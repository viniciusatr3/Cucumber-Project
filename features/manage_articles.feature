Feature: Manage Articles
  In order to make a blog
  As an author
  I want to create and manage articles

  Background: Create User
    Given I am a user email "vinicius.cocao@do.com" and password "123456789"
    When I go to the login page
    And I fill in email with "vinicius.cocao@do.com"
    And I fill in password with "123456789"
    And I press "Sign in"
    Then I should see "Signed in successfully."

  Scenario: Article List
    Given I have articles titled Meepo, Chen
    When I go to the list of articles
    Then I should see "Chen"
    And I should see "Meepo"

  Scenario: Basic List
    Given I have basics named Twerk, Fart, Read
    When I go to the list of basics
    Then I should see "Twerk"
    And I should see "Fart"
    And I should see "Read"