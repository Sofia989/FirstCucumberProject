Feature:Login

  @positive
  Scenario:Login with correct data
    Given User launches Chrome browser
    When User opens Home Page
    And User clicks on Login link
    And User enters correct data
    And User clicks on Yalla button
    Then User verifies Success message is displayed
    And User quites browser


  @wrongPassword
  Scenario Outline:Login with correct email and wrong password
    Given User launches Chrome browser
    When User opens Home Page
    And User clicks on Login link
    And User enters correct email and wrong password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Yalla button
    Then User verifies Error message is displayed
    And User quites browser
    Examples:
      | email             | password           |
      | ivanova@gmail.com | marinaIvanova2025! |
      | ivanova@gmail.com | MARINAIVANOVA2025! |
      | ivanova@gmail.com | МаринаИванова2025! |
      | ivanova@gmail.com | MarinaIvanova20251 |