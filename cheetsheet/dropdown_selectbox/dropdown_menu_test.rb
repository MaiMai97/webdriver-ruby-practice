require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://www.practiceselenium.com/check-out.html"

# dropdown = driver.find_element(:id, 'card_type').find_element(:xpath, "//option[. = 'Visa']").click
# sleep 2

#Get all the options from the dropdown
# options = dropdown_list.find_elements(tag_name: 'option')

# #Find the dropdown value by text
# options.each { |option| option.click if option.text == 'Visa' }

dropdown = driver.find_element(:id, 'card_type') 
select_list = Selenium::WebDriver::Support::Select.new(dropdown)
select_list.select_by(:text, "Visa")
sleep 2
