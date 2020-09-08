require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://itmscoaching.herokuapp.com/switch-window"

new_tab_button = driver.find_element(id: "new-tab-button")
new_tab_button.click
sleep 2
driver.switch_to.window(driver.window_handles[1])
driver.switch_to.window(driver.window_handles[0])
sleep 2
