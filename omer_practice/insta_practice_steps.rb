

Given(/^I go to ([^\s]*)$/) do |page_name|
  on page_name do |page|
    case page_name
      when 'InstaHomePage'
        @browser.goto('http:/www.instegram.com')
    end
    page.loaded?
  end
end

When(/^I log in to the ([^\s]*Page) as random user$/) do |page_name|
  on page_name do |page|
  page.log_in_as_random_user
  end
end

When(/^I log in to the ([^\s]*Page) as spesific user with details: (.*) (.*)$/) do |page_name, email, pass|
  on page_name do |page|
    page.log_in_as_spesific_user(email,pass)
  end
end

When(/^I go to url (.*)$/) do |item|
  @browser.goto(item)
end


And(/^I click (.*) on the (.*)$/) do |type, page_name|
  on page_name do |page|
  page.click_like
  end
end
