require 'webdrivers'
driver = Selenium::WebDriver.for :firefox
driver.get 'http://google.com'
sleep 2
driver.quit
