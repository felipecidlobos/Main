
# 🥋 Karate API Testing Framework

Este proyecto utiliza **Karate** para la automatización de pruebas de APIs, combinando pruebas funcionales, de integración y validaciones de rendimiento básico.

---

## 📌 Versión de Karate

Este README está preparado para trabajar con:

- **Karate version: 1.5.2**

(Compatible con JDK 11+ y Maven / Gradle)

Puedes verificar la versión en ejecución en los logs:

```
Karate version: 1.5.2
```

O revisando el `pom.xml`:

```xml
<dependency>
  <groupId>com.intuit.karate</groupId>
  <artifactId>karate-junit5</artifactId>
  <version>1.5.2</version>
</dependency>
```

---

## 🧰 Requisitos

- Java JDK 11 o superior
- Maven 3.8+ o Gradle
- IDE recomendado: IntelliJ IDEA

---

## 📁 Estructura básica del proyecto

```
project-root
│── src
│   └── test
│       └── java
│           └── examples
│               └── users
│                   └── users.feature
│── pom.xml
│── karate-config.js
│── README.md
```

---

## ▶️ Comandos para ejecutar pruebas

### ✅ Ejecutar todas las pruebas (Maven)

```bash
mvn test
```

---

### ✅ Ejecutar un feature específico

```bash
mvn test -Dkarate.options="classpath:examples/users/users.feature"
```

---

### ✅ Ejecutar por tags

```bash
mvn test -Dkarate.options="--tags @smoke"
```

---

### ✅ Ejecutar con entorno específico

```bash
mvn test -Dkarate.env=qa
```

Y en `karate-config.js`:

```javascript
if (karate.env == 'qa') {
  config.baseUrl = 'https://api.qa.com';
}
```

---

## 📊 Reportes

Después de la ejecución, Karate genera reportes automáticamente:

📂 `target/karate-reports/karate-summary.html`

👉 Abrir este archivo en el navegador para ver el resumen.

---

## ✅ Buenas prácticas

- Usar `Background` para configuración común
- Validar estructura completa del response
- Evitar hardcodear URLs (usar `karate-config.js`)
- Separar pruebas por dominio funcional

---

## 📚 Recursos

- Documentación oficial: https://karatelabs.io
- Repositorio GitHub: https://github.com/karatelabs/karate

---

## 👤 Autor

Proyecto de ejemplo para automatización con Karate

---

✅ Listo para ejecutar y escalar en CI/CD
