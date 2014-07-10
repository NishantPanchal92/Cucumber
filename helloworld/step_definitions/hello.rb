require 'rspec'
require 'watir-webdriver'

SITE = "www.spritecloud.com"
BROWSER = Watir::Browser.start(SITE, :firefox)
PAGES = {
  "spriteCloud Home" => "http://www.spritecloud.com/"
}

Given /^that I am on (.*)$/ do |page|
  BROWSER.goto(PAGES[page])
end

When /^I click on link (.*)$/ do |link|
  BROWSER.link(:text, link).click
end

Then /^the page title should be "([^"]*)"$/ do |title|
  BROWSER.title.eql?(title).should == true
end