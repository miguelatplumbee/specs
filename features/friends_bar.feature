@friends_bar
Feature: Friends Bar

  Background:
    Given I open the lobby logged in to Facebook

  Scenario: Friends bar is visible
    Then friends bar is visible in the lobby
    And contains friends
    
  Scenario: Touching invite button opens invite friend popup
    When I touch invite button
    Then invite button popup is displayed
    
  @manual  
  Scenario: Friends bar scrolling
    When I touch to scroll friends bar
    Then I can see all my friends
