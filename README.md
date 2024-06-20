
# *TrustBank Web Application*
  *Version: 3.1.11*
 ## *Project Overview*

 This web application is a Spring Boot-based project designed for managing bank employees and customers. It consists of multiple microservices, each with a specific role. The microservices communicate through an API Gateway and are registered with a Eureka Server for service discovery.

 ### *Microservices:*

1. **TrustBank-01-Producer-Bank:-**  Handles employee-related operations.
2. **TrustBank-02-Producer-Customer:-** Manages customer-related operations.
3. **TrustBank-03-Consumer-Bank-Customer:-** Integrates data from employee and customer services.
4. **TrustBank-04-ConfigServer:-** Provides centralized configuration for all services.
5. **TrustBank-05-ApiGateway:-** Acts as a gateway to route requests to the appropriate microservice.
6. **TrustBank-EurekaServer:-** Acts as a service registry for all microservices.

 ### *Prerequisites:*
 * **Java Development Kit (JDK):** Version 17 or later.
 * **Oracle Database:** version 11g or higer.
 * **Lombok:** Make sure Lombok is installed and enabled in your IDE.

### Setups to run the application:

*Database Setup:* 

**Important:** Since this application has Spring Security implemented, you need to create 
the **'TRUSTBANK_LOGIN_DETAILS'** table and insert initial data for the login functionality to work properly.
Use the following SQL script to create the table and insert the required data:

```
CREATE TABLE TRUSTBANK_LOGIN_DETAILS (
    sid INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL
);

INSERT INTO TRUSTBANK_LOGIN_DETAILS (sid, username, password, role) VALUES 
(1, 'CUSTOMER', '$2a$10$skQnYaodnrYINe0Uk/hDLedD.DmaO2Lo9cjX1Rj7ioSpr56HqNYya', 'CUSTOMER'),
(2, 'EMPLOYEE', '$2a$10$otX7sA4j9UdCDX0rlRMfzuUvlU8eyuY8E5Cmff.ZhNymkNkQw9i8i', 'EMPLOYEE'),
(3, 'MANAGER', '$2a$10$vx9ohyUQUw9fb/1nyWaSIui6yPIE2b6C2xr/p3MbFX3yslIOEtQwC', 'MANAGER');

```

*Run the Application in following order:*

1.  Run **TrustBank-EurekaServer**
2.  Run **TrustBank-04-ConfigServer**
3.  Run **TrustBank-05-ApiGateway**
4.  Run **TrustBank-01-Producer-Bank**
5.  Run **TrustBank-02-Producer-Customer**
6.  Run **TrustBank-03-Consumer-Bank-Customer**

After that ,open your web browser and navigate to **http://localhost:8761/** .Then click on the application instance 'TRUSTBANK-03-CONSUMER-BANK-CUSTOMER' and test the code ;)

   
