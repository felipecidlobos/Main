Feature:Validar status 200 e ID
  Scenario: Validar status 200 e ID
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method GET
    Then status 200
    And match response.id == 1
