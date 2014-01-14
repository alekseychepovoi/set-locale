Feature: My Keys

    Scenario: User views his/her keys

    Given user should be logged in
        And user is in "Developer" or "Translator" role
        And user views home "/"

    When user clicks "Kelimelerim" button

    Then system lists users related keys table with these columns "Edit" button, Keys, Tag, Translated Languages 
        And this list is ordered descending by updatedAt time.
        
    Scenario: User edits his or her keys
    
    Given user should be logged in 
        And user is in "Developer" or "Translator" role
        And user views "/key/my" 
        
    When user clicks "Edit" button
        And update-able fields turns to inputs in tables row 
        And system shows up save button just next to edit button on the row
        And user can fill fields
        And Click save button
    
    Then system updates the selected key's Keyname, Tag, and Translated
        
