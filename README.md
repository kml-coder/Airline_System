# ✈️ Airline System

Airline reservation and management system built with **JSP/Servlet** and **MySQL**, containerized using **Docker** and **Docker Compose**.

---

## 📂 Project Structure

```
Airline_System/
├── src/                     # JSP/Servlet source code
│   ├── main/java/           # Java sources
│   └── main/webapp/         # JSP pages, WEB-INF configs
├── build/                   # Compiled classes
├── init.sql                 # Database schema & seed data
├── Dockerfile               # Tomcat build instructions
├── docker-compose.yml       # Multi-container setup
└── README.md
```

---

## 🚀 Getting Started

### 1. Prerequisites
- Install [Docker](https://www.docker.com/products/docker-desktop)  
- Install [Docker Compose](https://docs.docker.com/compose/)  

---


### 2. Build and Run
Run the following command:

```bash
docker-compose up --build
```

- Tomcat server → [http://localhost:8080](http://localhost:8080)  
- MySQL server → `localhost:3306` (user: `airline`, password: `airline`, db: `dbFinal`)  

---

### 3. Database Access
To access MySQL inside the container:

```bash
docker exec -it airline_db mysql -uairline -pairline dbFinal
```

Useful MySQL commands:
```sql
SHOW TABLES;
DESCRIBE customer;
SELECT * FROM customer LIMIT 10;
```

---

## 🛫 Features
- User authentication (customer / admin / customer rep)
- Flight search, booking, and waiting list
- Customer Q&A system
- Admin statistics and revenue reports
- Preloaded schema and sample data (`init.sql`)

---

## ⚙️ Tech Stack
- **Backend:** JSP, Servlet, JDBC  
- **Database:** MySQL 8.0  
- **Server:** Tomcat 9.x  
- **JDK:** Java 17  
- **Containerization:** Docker, Docker Compose  

---

## 📌 Deployment
To share with others:
1. Push your project (including `docker-compose.yml` and `init.sql`) to GitHub.
2. Other users just need to:
   ```bash
   git clone <repo-url>
   cd Airline_System
   docker-compose up --build
   ```

Everything will run automatically with the same environment.

---

## 🔒 Security Notes
- Sensitive values (DB URL, username, password) are now read from `.env` instead of being hardcoded in JSP files.
- Do **not** commit `.env` to GitHub. Provide sample `.env.example` instead.

---
