Then(/^the google homepage is opened successfully$/) do
    navigate_to("https://google.com")
end

Then(/^user search for "(.*)"$/) do |item|
    enter_text("textbox_google_search",item)
    enter_text("textbox_google_search",:enter)
    sleep 2
end

Then(/^"(.*)" should be listed on page title/) do |item|
    check_partial_title(item, true)
end
