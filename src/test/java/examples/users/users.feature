
Feature: Validación completa del endpoint /posts/{id}

  Background:
    * url 'https://jsonplaceholder.typicode.com'
    * def endpoint = '/posts/1'

  Scenario: Validar respuesta exitosa de post por ID

    Given path endpoint
    When method GET

    # ✅ Validación de estado
    Then status 200

    # ✅ Validación de headers
    And match header Content-Type contains 'application/json; charset=utf-8'

    # ✅ Validación de tiempo de respuesta
    And assert responseTime < 2000

    # ✅ Validación de estructura completa
    And match response ==
    """
    {
      userId: '#number',
      id: 1,
      title: '#string',
      body: '#string'
    }
    """

    # ✅ Validaciones específicas
    And match response.id == 1
    And match response.userId == 1
