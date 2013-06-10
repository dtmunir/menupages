Feature: Users
	Guests are able to view contents of the site but unable to add, edit or delete content without registering.
	Able to register with an email and a password.

Background:
	When I visit the menus page

Scenario: Registering as a new user
	And I click on "Sign Up"
	And I enter a email with name "k@g.com"
	And I enter a password "12345678"
	And I enter a password confirmation "12345678"
	And I click hit save
	Then I should see the text "Welcome! You have signed up successfully."

Scenario: Logining in
	And I click on "Sign In"
	And I enter a email with name "k@g.com"
	And I enter a password "12345678"
	And I click "Sign In"
	Then I should see the text "Signed in successfully."
Scenario: Logining out
	And I am already logged in
	And I click on "Log Out"
	Then I should see the text "Signed out successfully."

Scenario: Editing a profile
	And I am already logged in
	And I click on "Edit Profile"
	And I enter a new email with name "k@z.com"
	And I enter a new password "qwerasdf"
	And I enter a new password confirmation "qwerasdf"
	And I enter the current password "12345678"
	And I click "Update"
	Then I should see the text "You updated your account successfully."

Scenario: Canceling a profile
	W