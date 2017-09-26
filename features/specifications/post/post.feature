Feature: Leaning the POST request
    In order to be a better QA,
    As a feture QA Engineer
    I want to lear how automated the POST request

    @post
    Scenario: Automted POST request
        Given I send a POST request on client endpoint.
        Then I should see a new client registered.
