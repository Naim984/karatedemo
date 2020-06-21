Feature: Demo Karate against Jenkins

  Scenario: Verify that Jenkins is up and running

    Given url 'https://sigom-rest-api-cib-ppt-sec-remediation-dev.appls.boaw.paas.gsnetcloud.corp/v0/entity/32714.4'
    When method get
    Then status 200
    Then print response
    And match response[0].name == 'spain'
