Feature: Leaning the DELETE request
    In order to be a better QA,
    As a feture QA Engineer
    I want to lear how automated the DELETE request

    @delete
    Scenario: Automted DELETE request
        Given I send a DELETE request on client endpoint.
        Then I shouldn't see the clients that I delete.
