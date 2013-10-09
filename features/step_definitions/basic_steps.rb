Given /^I have basics named (.+)$/ do |names|
  names.split(', ').each do |name|
  	Basic.create!(:name => name)
	end
end