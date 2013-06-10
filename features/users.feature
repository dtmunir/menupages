Feature: Users
	Guests are able to view contents of the site but unable to add, edit or delete content without registering.
	Able to register with an email and a password.

Background:
	When I visit the menus page

Scenario: Registering as a new user
	And I click on "Sign up"
	And I fill in "Email" with "k@g.com"
	And I fill in "Password" with "12345678"
	And I fill in "Password confirmation" with "12345678"
	And I click "Sign up"
	Then I should see the text "Welcome! You have signed up successfully."

Scenario: Logining in
	Given a valid user
	And I click on "Login"
	And I fill in "Email" with "k@g.com"
	And I fill in "Password" with "12345678"
	And I click "Sign in"
	Then I should see the text "Signed in successfully."

Scenario: Logining out
	Given a valid user
	And I click on "Login"
	And I fill in "Email" with "k@g.com"
	And I fill in "Password" with "12345678"
	And I click "Sign in"
	And I click on "Logout"
	Then I should see the text "Signed out successfully."

Scenario: Editing a profile
	Given a valid user
	And I click on "Login"
	And I fill in "Email" with "k@g.com"
	And I fill in "Password" with "12345678"
	And I click "Sign in"
	And I click on "Edit profile"
	And I fill in "Email" with "k@z.com"
	And I fill in "Password" with "qwerasdf"
	And I fill in "Password confirmation" with "qwerasdf"
	And I fill in "Current password" with "12345678"
	And I click "Update"
	Then I should see the text "You updated your account successfully."

Scenario: Canceling a profile
	