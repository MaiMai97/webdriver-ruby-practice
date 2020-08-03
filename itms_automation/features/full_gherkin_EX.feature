Feature: Sample full gherkin
    As a web surfer,
    I want to find information online,
    So I can learn new things and get tasks done

    Background: 
        Given the google homepage is opened successfully 

    Scenario: Finding iTMS Coaching
        When user search for "iTMS Coaching"
        Then "iTMS Coaching" should be listed on page title

    Scenario: Lengthy Google Search
        When the users search for the pharse:
        """
        iTMS Coaching - Khoá học online về kiểm thử phần mềm miễn phí dành cho người mới bắt đầu
        """
        Then "iTMS Coaching" should be listed on page title 
