@regression
  Feature:Testing the Login Functionality of MRS
    Scenario:Testing positive login (correct username  and correct password)
      When User provides 'username' and 'password' for MRS
      Then User validates the 'Home page of web site


    Scenario Outline: negative login
      When User provides '<username>' and '<password>' for MRS
      Then User validates the '<errorMessage>' error Message
      Examples:
        | username              | password | errorMessage         |
        | admin                 | aaa      | Authentication failed |
        | admin                 |          | Authentication failed |
        | aaa                   | abcd     | Authentication failed |
        |                       | ghjk     | Authentication failed |
