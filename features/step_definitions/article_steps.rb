Given /^I have articles titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Article.create!(:title => title)
  end
end

Then /^I should see javascript and press OK$/ do
	page.driver.browser.switch_to.alert.accept
end