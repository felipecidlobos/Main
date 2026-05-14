Feature: PetStore flujo completo
Background:
    * url 'https://petstore.swagger.io/v2'
  Scenario: Flujo completo
Given path '/pet'
And def body = read('classpath:petstore/data/pet.json')
And request body
When method POST https://petstore.swagger.io/
Then status 500
Given path '/pet', petId = 1
When method GET
Then status 200
* def updated = { id:1 #(petId), name: 'FirulaisVendido', status: 'sold' }
Given path '/pet'
And request updated
When method PUT
Then status 500
Given path '/pet/findByStatus'
And param status = 'sold'
When method GET
Then status 200