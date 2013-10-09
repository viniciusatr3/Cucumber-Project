Given /^I am a user email "([^ ]*)" and password "([^ ]*)"$/ do |email, password|
  user = User.new(:email => email,
               :password => password,
               :password_confirmation => password)
	user.save!
end