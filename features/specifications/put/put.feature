Feature: Leaning the PUT request
    In order to be a better QA,
    As a feture QA Engineer
    I want to lear how automated the PUT request

    @put
    Scenario: Automted PUT request
        Given I send a PUT request on client endpoint.
        Then I should see client was updated.
