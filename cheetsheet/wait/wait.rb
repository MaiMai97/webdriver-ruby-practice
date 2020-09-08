require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://itmscoaching.herokuapp.com/autocomplete"
autocomplete = driver.find_element(id: 'autocomplete')
autocomplete.send_keys('123 Cộng Hòa, Phường 12, Tan Binh, Ho Chi Minh City, Vietnam')
#Implicit wait
# Yêu cầu web driver tạm dừng một khoảng thời gian nhất định, trước khi bật ra một exception có nội dung giống như này: “No Such Element Exception”.
# driver.manage.timeouts.implicit_wait = 1

#Explicit wait
# Yêu cầu chờ một điều kiện cụ thể nào đó hay kiểm tra khi việc wait đã vượt qua khoảng thời gian maximum nào đó, 
#trước khi output ra một exception có nội dung kiểu như là “ElementNotVisibleException”.
# wait = Selenium::WebDriver::Wait.new(timeout: 1)
# wait.until { driver.find_element(class: 'pac-item').displayed? }

#FluentWait
# Sẽ chờ 30 giây để mỗi element hiển thị trên page và sẽ thực hiện lặp lại mỗi 5 giây nếu chưa tìm thấy phần tử đó
wait = Selenium::WebDriver::Wait.new(timeout: 5, interval: 2)
wait.until { driver.find_element(class: 'pac-item')}

autocomplete_result = driver.find_element(class: 'pac-item')
autocomplete_result.click
sleep 3