
@F4

Feature: create new product

Background: 

      # * url 'http://robustest.hopto.org:86/v3/project/new?accessKey=ezaZmhfH0DNATXU7O1uJ1byPk9c'
      
        * url 'http://robustest.hopto.org:86'
           
Scenario: create a product 

Given path 'v3/project/new'
And  param accessKey = 'ezaZmhfH0DNATXU7O1uJ1byPk9c'
            
# And request { "name": "project-Name-Karate", "desc" : "New create karate", "os": "deviceOnly", "url": ""}

  And request { "name": "Karate-assertion-200", "desc" : "New create project", "os": "deviceOnly", "url": ""}

When method post
Then status 200
And print response
And match response == { "name": "Karate-assertion","desc" : "New create project","os": "deviceOnly" }
    
    

