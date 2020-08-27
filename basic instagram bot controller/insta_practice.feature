Feature: Purchase of instegram followers has a high demand
  As a automation developer,
  I want to be able to control my instegram acc army and to command them to like,comment other users.


  Scenario Outline: I commend single user to like a photo
    When I go to InstaHomePage
    And I log in to the InstaHomePage as spesific user with details: <user_name> <user_pass>
    And I go to url https://www.instagram.com/p/CBm-c0kBk8B/
    And I click like on the InstaPhotoPage

    Examples:
      | user_name        |   user_pass     |
      |  XXXX            |       YYYY      |



