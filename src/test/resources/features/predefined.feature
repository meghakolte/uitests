@predefined
Feature: Smoke steps

#  @predefined1
#  @regression
#  Scenario: Predefined steps for Google
#    Given I open url "https://google.com"
#    Then I should see page title as "Google"
#    Then I type "Cucumber" into element with xpath "//input[@name='q']"
#    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
#    # Then I wait for 2 sec
#    Then I wait for element with xpath "//*[@id='res']" to be present
#    Then I should see page title contains "- Google Search"
#    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

@test-scenario
Scenario: Test Scenario for xpath validations
  Given I open url "http://ask-stage.portnov.com"
  #Then I should see page title as "Assessment Control"
  Then I type "meghakolte1990@gmail.com" into element with xpath "//input[@id='mat-input-0']"
  Then I type "demo@123" into element with xpath "//input[@type='password']"
  Then I click on element with xpath "//button[@type='submit']"

  Then I wait for 3 sec
  
@Test-scenario2
Scenario: Test Scenario for registration
  Given I open url "http://ask-stage.portnov.com"
  Then I click on element with xpath "//button[@class='mat-button mat-primary']"
  Then I type "John" into element with xpath "//input[@placeholder='First Name']"
  Then I type "Shery" into element with xpath "//input[@placeholder='Last Name']"
  Then I type "john1shery@gmail.com" into element with xpath "//input[@placeholder='Email']"
  Then I type "111222" into element with xpath "//input[@placeholder='Group Code']"
  Then I type "demo@123" into element with xpath "//input[@placeholder='Password']"
  Then I type "demo@123" into element with xpath "//input[@placeholder='Confirm Password']"
  Then I click on element with xpath "//span[contains(text(),'Register Me')]"
  Then I confirm user account with email "john1shery@gmail.com"
  And I take screenshot
  Then I wait for 3 sec


@Test-scenario3
Scenario: Test Scenario for Forgot password
  Given I open url "http://ask-stage.portnov.com"
  Then I click on element with xpath "//a[@href='/#/forgot-password']"
  Then I type "meghakolte1990@gmail.com" into element with xpath "//input[@placeholder='Email']"
  Then I click on element with xpath "//button[@class='mat-raised-button mat-primary']"
  Then I wait for 3 sec

@Test-scenario4
Scenario: Test scenario for change password
  Given I open url "http://ask-stage.portnov.com"
  Then I type "meghakolte1990@gmail.com" into element with xpath "//input[@id='mat-input-0']"
  Then I type "demo@123" into element with xpath "//input[@type='password']"
  Then I click on element with xpath "//button[@type='submit']"
  Then I wait for element with xpath "//*[contains(text(),'Settings')]" to be present
  Then I click on element with xpath "//*[contains(text(),'Settings')]"
  Then I wait for element with xpath "//span[contains(text(),'Change Your Password')]" to be present
  Then I click on element with xpath "//span[contains(text(),'Change Your Password')]"
  Then I type "demo@123" into element with xpath "//input[@placeholder='Password']"
  Then I type "welcome@90" into element with xpath "//input[@placeholder='New Password']"
  Then I type "welcome@90" into element with xpath "//input[@placeholder='Confirm New Password']"
  Then I click on element with xpath "//button[@class='mat-button']"
  Then I wait for 3 sec


  @test-scenario-validations
  Scenario: Test scenario for xpath validations
    Given I open url "http://ask-stage.portnov.com"
    Then I type "meghakolte1990@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "demo@123" into element with xpath "//*[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
    And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
    And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
    And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
    And I wait for element with xpath "//input[@formcontrolname='name']" to be present
    And I type "Test quiz" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
    And I click on element with xpath "//mat-radio-button[3]"
    And I type "Test question" into element with xpath "//textarea[@formcontrolname='question']"
    And I wait for 1 sec
    And I click on element with xpath "(//textarea[@formcontrolname='option'])[1]/../../../../..//input[@type='checkbox']/.."
    And I type "Option 1" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
    And I type "Option 2" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
    And I create 5 options
    And I choose 5 as correct option
    Then I wait for 3 sec
  

  




