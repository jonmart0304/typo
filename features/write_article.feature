Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully write articles
    Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
    
  Scenario: Successfully create and edit categories
    Given I am on the admin page
    When I follow "Categories"
    Then I should be on the admin categories page
    When I press "Save"
    Then I should see "Category could not be saved."
    When I fill in "Name" with "Fruit"
    And I press "Save"
    Then I should see "Category was successfully saved."
    