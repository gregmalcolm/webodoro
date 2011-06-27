Feature: Pomodoro Timer - Not started
  In order to manage my time
  I want to time my work on a task

  Background:
    Given I am on the timer page

  Scenario:
    Then the timer display should read 00:00:00

  Scenario:
    Then there should not be a pause button

  Scenario: 
    When I click on Start
    Then the timer display should start counting

  Scenario:
    When I click on Start
    Then the start button should become a pause button



