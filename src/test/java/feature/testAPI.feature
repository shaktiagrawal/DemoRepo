Feature: Testing Dummy API for testing
	Background: Given: the user sets the "baseURI"
	@TC1
	Scenario Outline: Get all employee data
    When the user sets endpoint to "<endPoint>"
    Then the status code should be <code>
    And the response must be shown    
  Examples: 
      | endPoint | code |
      | employees|  200 |
        @TC2
	Scenario Outline: Get a single employee data	
    When the user sets endpoint to "<endPoint>"
    And the user sends the <userID>
    Then the status code should be <code>
    And the response must be shown
    Examples: 
      |  endPoint  | userID | code | 
      |  employee  |    4   |  200 |
      |  employee  |    1   |  410 |
      |  employee  |    5   |  200 |
      |  employee  |   32   |  410 |
        @TC3
	Scenario: Create new record in database	
    When the user sets endpoint to "<endPoint>"
    And the user sends the following data:
      |		name		| 	Shakti Agrawal	|
      |		salary	| 			1800				|
      |		age		|					22				|
    Then the status code should be <code>
    And the response must be shown   
     Examples: 
      |  	endPoint	| code | 
      |  	create		|  200 |
      
  @TC4
  Scenario Outline: Delete an employee record	
    When the user sets endpoint to "<endPoint>"
    And the user sends the <userID>
    Then the status code should be <code>
    And the response must be shown    
    Examples: 
      |  endPoint  | userID | code | 
      |  employee  |    1   |  200 |
      |  employee  |    5   |  410 |