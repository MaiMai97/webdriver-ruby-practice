require 'rubygems'
require 'selenium-webdriver'
 
browser = Selenium::WebDriver.for :firefox
html_file = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/selectbox.html"
browser.get "file:///" + html_file
 
wait = Selenium::WebDriver::Wait.new(:timeout => 15)
 
#### Interact with the drop down box
select_list = wait.until {
    element = browser.find_element(:name, "dropdown")
    element if element.displayed?
}
select_element = browser.find_element(:name, "dropdown")
select_object = Selenium::WebDriver::Support::Select.new(select_element)
select_object.select_by(:index, 1)
sleep 2
select_object.select_by(:text, "Audi")
 sleep 2
browser.quit