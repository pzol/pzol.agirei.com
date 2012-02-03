Feature:  Find slow transactions
          User wants to find slow transactions
          So that he can optimize the system
          by identifying the transaction which take the most time

  Scenario: Find slow transactions (sunny day)
    Given the user is on the latest transactions page
    When  the user searches by time_taken with "20000"
    Then  the user sees a list of transactions with response time longer than "20000"

  Scenario: Invalid 
    Given the user is on the latest transactions page
    When  the user searches by time_taken with "invalid numeric"
    Then  the user sees the latest transactions page
    And   the uses sees an error notice saying "Invalid time taken entered"
