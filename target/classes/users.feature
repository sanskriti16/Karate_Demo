Feature: check returned users by API

     Background: 
           * url 'https://gorest.co.in'
           * header Authorization = 'Bearer ff4cbef89b49ba9dc0fca71844decb9ad8a48f1da0c82e2523c1a3f50ffebaaf'
           * configure ssl = true
           
       Scenario: list all the users having name with john
       
            Given path '/public-api/users'
            And  param name = 'A'
            When method get
            Then status 200