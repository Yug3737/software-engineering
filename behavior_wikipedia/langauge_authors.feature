Feature: language authors cited on wikipedia pages

    Scenario: search for Python, we find reference to Guido
       Given we are browsing wikipedia home pages
        When we search for "Python (the programming language)"
        Then we will see a refenrence to "Guido"
    
    Scenario: searhc for C++, we find reference to Bjarne Stroustrup
       Given we browsing wikipedia home page
        When we search for "C++"
        Then we will see a refence to "Bjarne Stroustrup"
    
    
    Scenario: search for Pascal, we find reference to Niklaus Wirth
       Given we are browsing wikipedia home page
        When we search for "Pascal (the programming language)"
        Then we will see a reference to "Niklaus Wirth"

    Scenario Outline: Language_Authors
       Given we are browsing wikipedia home page
        When we search for "<language>"
        Then we will see a reference to "<author>"
    
    Examples: Modern Languages 
      | language                          | author             |
      | Python (the programming language) | Guido              |
      | C++                               | Bjarne Stroustrup  |

 Examples: Older Languages
      | language                          | author        |
      | Pascal (the programming language) | Niklaus Wirth |
      | Fortran                           | John Backus   |
      | Cobol                             | Hopper        |