
function fn() {

  var config = {
    baseUrl: 'https://petstore.swagger.io/v2'
  };

  // 🔥 DESACTIVAR VALIDACIÓN SSL
  karate.configure('ssl', true);

  return config;
}
