require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://google.com"

element = driver.find_element(name: 'q')
element.click
element.send_keys "iTMS Coaching"
element.submit
sleep 10
driver.quit
