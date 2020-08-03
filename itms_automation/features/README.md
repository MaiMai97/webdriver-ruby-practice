Welcome to itms_automation
=================

itms_automation : Automation Tesing Using Ruby

itms_automation is a behavior driven development (BDD) approach to write automation test script to test Web and Android Apps.
It enables you to write and execute automated acceptance/unit tests.
It is cross-platform, open source and free.
Automate your test cases with minimal coding.

itms_automation Ruby API's
============================

If you are writing code for your custom steps you can use the following methods :

Note : For some of the API paramtere values are fixed. Such values for paramaters are mentioned below.

Navigation API's
----------------
# method to open link
	navigate_to("link")
# method to navigate back & forward
	navigate(direction)  # direction => "back" / "forward"
# method to quite webdriver instance
	close_driver()
# method to return key by os wise
	get_key()
# Method to zoom in/out page
	zoom_in_out(in_out) # in_out => "in" / "out"
# Method to zoom in/out web page until web element dislays
	zoom_in_out_till_element_display(element, in_out)
# Method to resize browser
    resize_browser(width, heigth)
# Method to maximize browser
	maximize_browser
# Method to refresh page
	refresh_page
# Method to hover on element
	hover_over_element(element)
# Method to scroll page to perticular element
	scroll_to_element(element)
# method to scroll page to top or end
	scroll_page(to)
# Method to switch to new window
	switch_to_new_window
# Method to switch to old window
	switch_to_old_window
# Method to close new window
	close_new_window

Input API's
-------------------------

# method to enter text into textfield
	enter_text(element, text)
# method to clear text from textfield
	clear_text(element)
# method to select option from dropdwon list
	select_option_from_dropdown(element, by, option)
# method to select all option from dropdwon list
	select_all_option_from_multiselect_dropdown(element)
# method to unselect all option from dropdwon list
	unselect_all_option_from_multiselect_dropdown(element)
# method to check checkbox
	check_checkbox(element)
# method to uncheck checkbox
	uncheck_checkbox(element)
# method to select radio button
	toggle_checkbox(element)
# method to select radio button
	select_radio_button(element)
# method to select option from radio button group
	select_option_from_radio_button_group(element, by, option)

Click API's
------------
# method to click on an element
	click(element)
# method to double-click on an element
	double_click(element)
# method to forcefully click on an element
	click_forcefully(element)

Javascript Handling API
-----------------------
# method to interact with alert
	handle_alert(decision) 		# decision => "accept" / "dismiss"

Progress API's
--------------
# method to wait with second
	wait(time_in_sec)
# method to wait for the element display
	wait_for_element_to_display(element, duration)
# method to wait for the element enable
	wait_for_element_to_enable(element, duration)

Screenshot API's
--------------
# method to take screenshot and save in screenshot folder
	take_screenshots

Configuration API's
-----------------
# method to print configuration
	print_congifugartion
# method to print desktop configuration
	print_desktop_configuration
# method to print mobile configuration
	print_mobile_configuration

Assertion API's
-----------------
# Method to return page title
	get_page_title
# Method to verify title
# param 1 : String : expected title
# param 2 : Boolean : test case [true or flase]
	check_title(title, test_case)
# Method to verify partial title
# param 1 : String : partial title string
# param 2 : Boolean : test case [true or flase]
	check_partial_title(partial_text_title, test_case)
# Method to get element text
# param : String
	get_element_text(element)
# Method to check element text
# param 1 : String : Element
# param 2 : String : Expected element text
# param 3 : Boolean : test case [true or flase]
	check_element_text(element, expected_value, test_case)
# Method to check partial element text
# param 1 : String : Element
# param 2 : String : Expected element partial text
# param 3 : Boolean : test case [true or flase]
	check_element_partial_text(element, expected_value, test_case)
# Method to return element status - enabled?
# param : String : Element
	is_element_enabled(element)
# method to check element status - enabled?
# param 1 : String : Element
# param 2 : Boolean : test case [true or flase]
	check_element_enable(element, test_case)
# method to get attribute value
# param 1 : String : Element
# param 2 : String : atrribute name
	get_element_attribute(element, attribute_name)
# method to check attribute value
# param 1 : String : Element
# param 2 : String : atrribute name
# param 3 : String : atrribute value
# param 4 : Boolean : test case [true or flase]
	check_element_attribute(element, attribute_name, attribute_value, test_case)
# method to get element status - displayed?
# param : String : Element
	is_element_displayed(element)
# method to check element presence
# param 1 : String : Element
# param 2 : Boolean : test case [true or flase]
	check_element_presence(element, test_case)
# method to assert checkbox check/uncheck
# param 1 : String : Element
# param 2 : Boolean : test case [true or flase]
	is_checkbox_checked(element, should_be_checked = true)
# method to assert radio button selected/unselected
# param 1 : String : Element
# param 2 : Boolean : test case [true or flase]
	is_radio_button_selected(element, should_be_selected = true)
# method to assert option from radio button group is selected/unselected
	is_option_from_radio_button_group_selected(element, by, option, should_be_selected = true)
# method to get javascript pop-up alert text
	get_alert_text
# method to check javascript pop-up alert text
	check_alert_text(text)
# method to check dropdown status -> selected	
	is_option_from_dropdown_selected(element, by, option, should_be_selected=true)
	
Usage: itms_automation <command-name> [parameters] [options]

  <command-name> can be one of
    help
    gen
    version

  Commands:
    help : prints more detailed help information.

    gen  : creates a skeleton features dir. This is usually used once when
           setting up selnium-cucumber to ensure that the features folder contains
           the right step definitions and environment to run with cucumber.

    version : prints the gem version

    Options:  -v, --verbose  Turns on verbose logging
