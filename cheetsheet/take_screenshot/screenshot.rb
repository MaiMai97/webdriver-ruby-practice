require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

begin
  driver.get 'https://itmscoaching.com/'

  # Takes and Stores the screenshot in specified path
  driver.save_screenshot('./itmscoaching.png')

end  