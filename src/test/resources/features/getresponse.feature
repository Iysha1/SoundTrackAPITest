@wip
Feature: Sound Track  Api Tests

  Background: Given users  GET request to https://testapi.io/api/ottplatform/media

  Scenario: Basic test with status code validation

    Then status code should be 200
    And response time should be 1000 milliseconds

  Scenario: Verify id field and segment type
    Then Verify if the “id” field is never null or empty for all 14 items present in the data array
    When Verify that the “segment_type” field for every track is always 'music'

  Scenario: Verify primary field
    Then Verify that the 'primary' field in 'title_list' is never null or empty for any track

  Scenario: Verify that only one track is on the list
    Then Verify that only one track in the list has 'now_playing'field in 'offset' as true


  Scenario: Verify date in the response headers
    Then In the response headers, verify the 'Date' value





