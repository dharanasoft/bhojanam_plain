Feature: Manage Reviews
  In order to manage reviews
  A user should be able to add/edit a review for a restaurant

  Scenario: Add a review
    Given that there is a restaurant called "Nala's Aapa Kadai"
    And I am on the "Nala's Aapa Kadai" restaurant page
    When I fill in "Wholesome tasty aapams" in the "Title"
    And I fill in "You must get a taste of this" in the "Content"
    And I click on "Create Review"
    Then I should be on "Nala's Aapa Kadai" restaurant page
    And I should see "New review created"
    And I should see "Wholesome tasty aapams"
