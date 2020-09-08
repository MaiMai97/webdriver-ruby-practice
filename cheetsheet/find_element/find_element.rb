
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
begin
  # Navigate to URL
  driver.get 'https://google.com'

  # Get search box element from webElement 'q' using Find Element
#   search_bar = driver.find_element(name: 'q')
  search_bar = driver.find_element(css: '[name="q"]')
#   search_bar = driver.find_element(xpath: '//input[@name="q"]')

  # Perform action using WebElement
  search_bar.send_keys 'iTMS Coaching'
  sleep 5
ensure
  driver.quit
end
 