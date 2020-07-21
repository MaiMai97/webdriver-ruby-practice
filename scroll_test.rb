require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://itmscoaching.herokuapp.com/scroll"

name = driver.find_element(id: 'name')
driver.action.move_to(name).send_keys('iTMS Coaching')

date = driver.find_element(id: 'date')
date.send_keys('01/01/2021')
