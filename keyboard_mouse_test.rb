require "selenium-webdriver"

driver = Selenium::WebDriver.for:chrome
driver.navigate.to "https://formy-project.herokuapp.com/keypress"

name = driver.find_element(id: 'name')
name.send_keys('iTMS Coaching')

button = driver.find_element(id: 'button')
button.click
