@google_search
Feature: Google Web Browsing
    As a web surfer,
    I want to find information online,
    So I can learn new things and get tasks done

    Scenario: Finding iTMS Coaching
        Given the google homepage is opened successfully
        When user search for "iTMS Coaching"
        Then "iTMS Coaching" should be listed on page title