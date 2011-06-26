Given /^I am on the timer page$/ do
  @timer = PageObject::TimerPage.new(self)
  @timer.visit
end

When /^I click on Start$/ do
  @timer.click_start
end

Then /^the timer display should start counting$/ do
  old_time = @timer.retrieve_display_time.to_i
  sleep(2)
  new_time = @timer.retrieve_display_time.to_i 
  new_time.should > old_time
end

