# Wigell Gateway
## Overview
Wigell Gateway is a gateway to four different microservices. Through this, one can reach services for Gym, Travel, Padel and Repair. 

---

## 🧩 Related Projects
- [WigellGymService](https://github.com/SaraSnail/WigellGymServices) - made by [SaraSnail](https://github.com/SaraSnail)

### Projects made by others added in the Gateway
- [WigellTravelService](https://github.com/Sommar-skog/WigellTravelService) - made by [Sommar-skog](https://github.com/Sommar-skog)
- [WigellPadelService](https://github.com/a-westerberg/WigellPadelService) - made by [a-westerberg](https://github.com/a-westerberg)
- [WigellRepairService](https://github.com/Jamtgard/WigellRepairService) - made by [Jamtgard](https://github.com/Jamtgard)

---

##  🚀 Tech Stack

- **Language :** Java 21
- **Build Tool :** Apache Maven
- **Framework :** Spring boot 3.5.5
- **Gateway :** Cloud starter gateway server webmvc

--- 

## 🏁 Getting started
### Prerequisites

- Java 21
- Maven
- Docker (for running MySQL and containerizing the gateway)

---

## 🔌 Ports
- **Gateway :** `4545`
- **MySQL :** `3306`

#### Services :
- **Gym Service :** `6565`
- **Gym Travel :** `8585`
- **Gym Padel :** `7575`
- **Gym Repair :** `5555`

Connections to services can be found in `application.yml`


---

## 🔒 Authentication & Roles

This service uses **Spring Security** for authentication and authorization.

> _Note: These are not "real" users/admin. They are placeholders for production and used under development._
>
| Role    | Username | Password |
|---------|:--------:|:--------:|
| ADMIN   |  simon   |  simon   |
| USER    |   alex   |   alex   |
| USER    |   sara   |   sara   |
| USER    |  amanda  |  amanda  |

---

## 🐳 Docker
- Use `script.bat` to build and run the container easily.
- Docker network: `wigell-network`
- All services connected uses the same name and password for MySQL database

---

## 🛢️ MySQL Database

> _Note: The Gateway doesn't use the database, but all the microservices does

| Name     |  Username    | Password |
|----------|:------------:|:--------:|
| wigelldb | wigelldbassa |   assa   |

- **Version:** 8.0 (runs in a Docker container)
- **Default Port:** `3306`
    - In this example port is `3307:3306`. If MySQL workbench server is not installed the port can be changed to `3306:3306`
- **Initial Setup Example:**
  ```bash
  docker run -d -p 3307:3306 --name wigell-mysql-service --network wigell-network -e MYSQL_ROOT_PASSWORD=assa -e MYSQL_DATABASE=wigelldb -e MYSQL_USER=wigelldbassa -e MYSQL_PASSWORD=assa mysql:8.0
  ```
  This creates a database named `wigelldb` with the root password `assa`.
  The containers name becomes `wigell-mysql-service` and it connects with the network `wigell-network`

> _Tip: You can change the database name, username, and password as needed—just update the environment variables and your application config._