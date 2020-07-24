require "selenium-webdriver"
require "webdrivers"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://itmscoaching.herokuapp.com/keypress"

name = driver.find_element(id: 'name')
name.send_keys('iTMS Coaching')
# name.send_keys(:enter)

button = driver.find_element(id: 'button')
button.click
driver.action.key_down(name, :enter).perform