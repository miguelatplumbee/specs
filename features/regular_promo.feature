@regular_promo
Feature: Regular Promo

  Regular promotions are timed, single tier promos that are displayed within the shop.

  Scenario: Promotion is displayed on application startup
    Given the user opens the app with an active regular promo
    Then the promo is displayed

  Scenario: Promotion is displayed when the shop opens
    Given the user opens the app with an active regular promo
    When the user opens the shop
    Then the promo is displayed
    When the user closes the promo
    Then the shop is displayed
