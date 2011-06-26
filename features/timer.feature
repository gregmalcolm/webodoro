Feature: Pomodoro Timer
  In order to manage my time
  I want to time my work on a task

  Background:
    Given I am on the timer page

  Scenario:
    When I click on Start
    Then the timer display should start counting
