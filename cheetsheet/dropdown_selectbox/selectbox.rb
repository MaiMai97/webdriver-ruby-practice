require 'rubygems'
require 'selenium-webdriver'
 
browser = Selenium::WebDriver.for :firefox
html_file = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/selectbox.html"
browser.get "file:///" + html_file

options = browser.find_element(:name, "dropdown")
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:text, "Volvo")
select_object.select_by(:index, 3)
select_object.select_by(:value, "3")
browser.quit
