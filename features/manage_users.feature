Feature: Manage Users
  In order to make an user
  As an author
  I want to create and manage users


  Scenario: Create User
  	Given I am on the register page
  	And I fill in "Email" with "vinicius.cocao@do.com"
  	And I fill in "Password" with "123456789"
  	And I fill in "Password confirmation" with "123456789"
  	And I press "Sign up"

  Scenario: Login and Logout
  	Given I am a user email "vinicius.cocao@do.com" and password "123456789"
    When I go to the login page
    And I fill in "Email" with "vinicius.cocao@do.com"
    And I fill in "Password" with "123456789"
    And I press "Sign in"
    Then I should see "Sign out"
    And I follow "Sign out"