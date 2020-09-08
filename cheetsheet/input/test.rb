require 'rubygems'
require 'selenium-webdriver'
 
browser = Selenium::WebDriver.for :firefox
html_file = File.expand_path(File.dirname(File.dirname(__FILE__))) + "/form.html"
browser.get "file:///" + html_file
 
# Timeout = 15 sec
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

# Add text to a text box
input = wait.until {
    element = browser.find_element(:name, "searchbox")
    element if element.displayed?
}
input.send_keys("Information")
 
 sleep 2
browser.quit