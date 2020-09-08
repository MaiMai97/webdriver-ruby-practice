require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
############ Navigate to ############
driver.get 'http://itmscoaching.com'
####################################

############ Get current URL #######
#You can read the current URL from the browser’s address bar using
puts driver.current_url
####################################

############ Get title ############
# You can read the current page title from the browser:
puts driver.title
####################################
