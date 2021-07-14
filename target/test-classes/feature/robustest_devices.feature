Feature: check returned devices by API

     Background: 
           * url 'http://robustest.hopto.org:86'
           
           
       Scenario: list all the available devices 
       
            Given path 'v3/devices'
            And  param accessKey = 'ezaZmhfH0DNATXU7O1uJ1byPk9c'
            
            When method get
            Then status 200