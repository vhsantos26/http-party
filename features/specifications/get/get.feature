Feature: Leaning the GET request
    In order to be a better QA,
    As a feture QA Engineer
    I want to lear how automated the GET request

    @get
    Scenario: Automted GET request
        Given I send a GET request on client endpoint.
        Then I should see the return will be the registered clients.
