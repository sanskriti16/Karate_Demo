

@F1

Feature: check returned devices by API
     
Background: 
     
           * url 'http://robustest.hopto.org:86'
           
# Scenario 1 with background, path, parameter
           
  Scenario: list all the available devices 
  
            Given path 'v3/devices'
            And  param accessKey = 'ezaZmhfH0DNATXU7O1uJ1byPk9c'
            
            When method get
            Then status 200
            And print response
            And print responseStatus
            And print responseTime
            And print responseHeaders
            And print responseCookies
            
#Scenario 2 Assertion
            
Scenario: perform assertions 

            Given path 'v3/devices'
            And  param accessKey = 'ezaZmhfH0DNATXU7O1uJ1byPk9c'
            
            When method get
            Then status 200
            And assert response.available[0]._id == "5d1710d4f38611562ed2b0d3"
            And assert response.available[0].name == "iPhone 5s"
            And assert response.available[0].projects[0] == "60aa5ca7d18e92ac29a33648"
            And assert response.available[0].model_id == "iPhone 5s - 12.5.4"
            
            
            