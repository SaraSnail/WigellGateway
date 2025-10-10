# Wigell Gateway
## Overview
Wigell Gateway is a gateway to four different microservices. Through this one can reach services for Gym, Travel, Padel and Repair. 

---

## 🧩 Related Projects
- [WigellGymService](https://github.com/SaraSnail/WigellGymServices) - made by SaraSnail

### Projects made by others added in the Gateway
- [WigellTravelService](https://github.com/Sommar-skog/WigellTravelService) - made by Sommar-skog
- [WigellPadelService](https://github.com/a-westerberg/WigellPadelService) - made by a-westerberg
- [WigellRepairService](https://github.com/Jamtgard/WigellRepairService) - made by Jamtgard

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
- Docker (for running MySQL and containerizing the service)

---

## 🔌 Ports
- **Gateway :** `4545`
- **MySQL :** `3306`

#### Services :
- **Gym Service :** `6565`
- **Gym Travel :** `8585`
- **Gym Padel :** `7575`
- **Gym Repair :** `5555`

> _Note: Connections to services can be found in `application.yml`_


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