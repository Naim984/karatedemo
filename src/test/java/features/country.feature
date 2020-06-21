Feature: Correctly receive information from the country of Portugal

  Scenario: Get information from a country

    Given url 'https://restcountries.eu/rest/v2/name/portugal?fullText=true'
    When method get
    Then status 200
    And print response
    And match response[0].name == 'Portugal'
    And match response[0].capital == 'Lisbon'


