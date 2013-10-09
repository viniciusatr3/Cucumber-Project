Given /^I am a user email "([^ ]*)" and password "([^ ]*)"$/ do |email, password|
  user = User.new(:email => email,
               :password => password,
               :password_confirmation => password)
	user.save!
end

Given /^a logged in user$/ do 
  visit user_session_path
  fill_in('Email', :with => "vinicius.cocao@do.com")
  fill_in('Password', :with => "123456789")
  click_button("Sign in")
end