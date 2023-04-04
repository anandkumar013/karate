Feature: Test for home page

    Background:  Define url
        Given url 'https://api.realworld.io/api/'

    Scenario: get All Tags
        Given path 'tags'
        When method get
        Then status 201

    Scenario: get 10 articles request param
        Given params {limit:10 , offset:0}
        Given path 'articles'
        When method get
        Then status 200  

