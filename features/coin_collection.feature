@coin_collection
Feature: Coin Collection

  Background:
    Given I open the lobby as a new user
    And my balance is set to 1000

  Scenario: New users can collect coins on startup
    Then collect coins button should be visible

  Scenario: User balance is updated after collecting coins
    Given user taps collect coins button
    Then my balance should be 1,300

  Scenario: Collection timer is visible after collecting coins
    Given user taps collect coins button
    Then collect coins timer button should be visible

  Scenario: Collection timer displays remaining time to collect coins
    Given user taps collect coins button
    Then collect coins timer should display 59 minutes to collect

  Scenario: User can collect one hour after last collection
    Given user taps collect coins button
    And server time is increased by 1 hours
    Then collect coins button should be visible

  @manual
  Scenario: Collect coins animation is displayed
    Given user taps collect coins button
    Then collect coins animation should be played
