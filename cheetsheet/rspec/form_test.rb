require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox

driver.navigate.to "https://itmscoaching.herokuapp.com/form"

driver.find_element(id: 'first-name').send_keys('iTMS')

driver.find_element(id: 'last-name').send_keys('Coaching')

driver.find_element(id: 'job-title').send_keys('QA')

driver.find_element(id: 'radio-button-2').click

driver.find_element(id: 'checkbox-2').click

driver.find_element(css: 'option[value="2"]').click

driver.find_element(id: 'datepicker').send_keys('05/25/2025')

driver.find_element(id: 'datepicker').send_keys :return

driver.find_element(css: '.btn.btn-lg.btn-primary').click

driver.quit
