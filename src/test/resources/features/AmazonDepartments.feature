#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
Feature: Amazon departments

@amazonTest
Scenario: As a User, I am able to select different departments and search
 Given I am on the amazon homepage
 And The departments dropdown is "All Departments"
 When I select the department "Home & Kitchen"
 And I search "Coffee mug"
 Then I should be on "Coffee mug" search result page
 And The departments dropdown is "Home & Kitchen"