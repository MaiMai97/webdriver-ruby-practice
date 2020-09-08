require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://itmscoaching.herokuapp.com/form"
driver.find_element(css: '.btn.btn-lg.btn-primary').click
wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until { driver.find_element(class: 'alert').displayed? }
banner = driver.find_element(class: 'alert')
banner_text = banner.text
puts "BANNER TEXT: #{banner_text}"
driver.quit
