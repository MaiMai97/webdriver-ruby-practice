require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
############ Navigate to ############
# Convenient way
driver.get 'http://google.com'
# Longer Way
# driver.navigate.to 'https://selenium.dev'
####################################

############ Get current URL #######
#You can read the current URL from the browser’s address bar using
driver.current_url
####################################

############ Refresh ############
# Refresh the current page:
driver.navigate.refresh
####################################

############ Get title ############
# You can read the current page title from the browser:
puts driver.title
####################################
